#!/bin/sh

#target='mrp'
tmp=tmp
ldir=pdf
if [ $# -eq 0 ]
  then
    echo "No namespace supplied"
    exit 1
fi
if [ "$1" == "namespacename" ];
    then
		echo "namespacename is a example, please provice name of the real namepspace (for ex. Accounting, mrp, Auth etc.)"
        exit 1
fi
target=$1
echo "Namespace : $target"

rm -rf $tmp
mkdir $tmp
yes | cp $ldir/* tmp

echo '{\Large ' $(echo $target | tr [a-z] [A-Z]) '}' >> $tmp/titletext.tex
java -jar bin/ogit-tools-jar-with-dependencies.jar -input . -output $tmp/$target".java" -inputformat ttl -outputformat latex -filter $target
java -jar bin/ogit-tools-jar-with-dependencies.jar -input . -output $tmp -inputformat ttl -outputformat dot -filter $target
cd $tmp
dot -Tpng ontology.dot > ontology.png
doxygen ogit-doxyfile
cd latex/
make pdf
cd ..
cd ..

rm -rf $target
mkdir $target

yes | cp -rf $tmp/latex/refman.pdf $target/$target".pdf"
yes | cp -rf $tmp/ontology.png $target/$target".png"
rm -rf $tmp