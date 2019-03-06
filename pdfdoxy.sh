#!/bin/sh

dir0=downloads
ldir=pdf
rm -rf $dir0
mkdir $dir0
OUTPUT="index.html"
echo '<table style="">' > $dir0/$OUTPUT
echo '<tr>' >> $dir0/$OUTPUT
echo '<th>Namespace</th>' >> $dir0/$OUTPUT
echo '<th>PDF Files</th>' >> $dir0/$OUTPUT
echo '<th>images</th>' >> $dir0/$OUTPUT
echo '</tr>' >> $dir0/$OUTPUT

cd NTO
for d in */ ; do
	target=${d%/}
	echo "$target";
	if [ "$target" == "BusinessProcess" ]; then
		continue
	fi
	#if [ "$target" != "Auth" ]; then
#		continue
#	fi
	rm -rf ../tmp
	mkdir ../tmp
	cp ../$ldir/* ../tmp
	echo '{\Large '$target'}' >> ../tmp/titletext.tex
	java -jar ../bin/ogit-tools-jar-with-dependencies.jar -input ../ -output ../tmp/$target".java" -inputformat ttl -outputformat latex -filter $target
	java -jar ../bin/ogit-tools-jar-with-dependencies.jar -input ../ -output ../tmp/ -inputformat ttl -outputformat dot -filter $target
	
	#echo '/// @defgroup' $target $target | cat - ../tmp/$target".java" > temp && mv temp ../tmp/$target".java"
	yes | cp $target/"README.md" ../tmp/$target".md"
	cd ../tmp/
	dot -Tpng ontology.dot > ontology.png
	doxygen ogit-doxyfile
	cd latex/
	make pdf
	cd ..
	yes | cp -rf latex/refman.pdf ../$dir0/$target".pdf"
	yes | cp -rf ontology.png ../$dir0/$target".png"
	echo '<tr>' >> ../$dir0/$OUTPUT
    echo '<td>'$target'</td>' >> ../$dir0/$OUTPUT
    echo '<td><a href='$target'.pdf>pdf</a></td>' >> ../$dir0/$OUTPUT
    echo '<td><a href='$target'.png>png</a></td>' >> ../$dir0/$OUTPUT
    echo '</tr>' >> ../$dir0/$OUTPUT
	cd ../NTO

done
cd ..
echo '</table>' >> $dir0/$OUTPUT