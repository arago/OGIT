#!/bin/sh

#java -jar bin/ogit-tools-jar-with-dependencies.jar -input . -output docs/doxy.java -outputformat dox -inputformat ttl

cd NTO
for d in */ ; do
    target=${d%/}
    if [ -e $target/"README.md" ]
    then yes | cp $target/"README.md" ../docs/$target".txtdoc"
    echo '/*! @addtogroup' $target | cat - ../docs/$target".txtdoc" > temp && mv temp ../docs/$target".txtdoc"
    echo "*/" >> ../docs/$target".txtdoc"
    fi
done
cd ..


