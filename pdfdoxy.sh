#!/bin/sh

dir0=downloads
pdfdir=pdf
tmpdir=tmppdf
rm -rf $dir0
mkdir $dir0
cp -r bin/bootstrap-4.0.0/* $dir0/
OUTPUT="index.html"
#htmlheader=$(cat bin/bootstrap-4.0.0/indexHeader.html)
#htmlfooter=$(cat bin/bootstrap-4.0.0/indexFooter.html)
cat bin/bootstrap-4.0.0/indexHeader.html > $dir0/$OUTPUT
echo '<table style="">' >> $dir0/$OUTPUT
echo '<tr>' >> $dir0/$OUTPUT
echo '<th>Namespace</th>' >> $dir0/$OUTPUT
echo '<th>PDF</th>' >> $dir0/$OUTPUT
echo '<th>Diagram</th>' >> $dir0/$OUTPUT
echo '<th>Dot</th>' >> $dir0/$OUTPUT
echo '</tr>' >> $dir0/$OUTPUT

cd NTO
for d in */ ; do
	target=${d%/}
	echo "$target";
	
	rm -rf ../$tmpdir
	mkdir ../$tmpdir
	cp ../$pdfdir/* ../$tmpdir
	echo '{\Large '$target'}' >> ../$tmpdir/titletext.tex
	java -jar ../bin/ogit-tools-jar-with-dependencies.jar -input ../ -output ../$tmpdir/$target".java" -inputformat ttl -outputformat latex -filter $target
	java -jar ../bin/ogit-tools-jar-with-dependencies.jar -input ../ -output ../$tmpdir/ -inputformat ttl -outputformat dot -filter $target
	
	#echo '/// @defgroup' $target $target | cat - ../$tmpdir/$target".java" > temp && mv temp ../$tmpdir/$target".java"
	yes | cp $target/"README.md" ../$tmpdir/$target".md"
	cd ../$tmpdir/
	dot -Tpng ontology.dot > ontology.png
	doxygen ogit-doxyfile
	cd latex/
	make pdf
	cd ..
	yes | cp -rf latex/refman.pdf ../$dir0/$target".pdf"
	yes | cp -rf ontology.png ../$dir0/$target".png"
	yes | cp -rf ontology.dot ../$dir0/$target".dot"
	echo '<tr>' >> ../$dir0/$OUTPUT
    echo '<td>'$target'</td>' >> ../$dir0/$OUTPUT
    echo '<td><a href='$target'.pdf>pdf</a></td>' >> ../$dir0/$OUTPUT
    echo '<td><a href='$target'.png>png</a></td>' >> ../$dir0/$OUTPUT
    echo '<td><a href='$target'.dot>dot</a></td>' >> ../$dir0/$OUTPUT
    echo '</tr>' >> ../$dir0/$OUTPUT
	cd ../NTO

done
rm -rf ../$tmpdir
cd ..
echo '</table>' >> $dir0/$OUTPUT
cat bin/bootstrap-4.0.0/indexFooter.html >> $dir0/$OUTPUT