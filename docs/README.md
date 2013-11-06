# HowTo integrate external documents to the ontology documentation

# 1. Syntax
To produce an automatic documentation for the ontology from the source files (.yaml)
the doxygen tool is used. Because yaml format is not supported from doxygen the files are
converted to javadoc. So you have to use javadoc format. The doc file starts with ```/*!``` and 
ends with ```*/```. All other lines have to start with "*".
The file extension is .txtdoc and have to store in the docs-Folder in OGIT.

## 1.1 Main Page
You can create a main page with the "\mainpage <name>" tag.
e.g. \mainpage Overview

## 1.2 Images
To display an image use the "\image html <picture>" tag. The images are stored
under /docs/images.
e.g. \image html ontology.jpg

The full doxygen markdown is supported and all other information you can find under http://www.stack.nl/~dimitri/doxygen/manual/index.html.
