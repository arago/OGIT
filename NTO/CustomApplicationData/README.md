CustomApplicationData
-----
The easy way to store some application data

### What is it for?

When developing an application for GraphIT sometimes you often need to store some data which is just for the application.

In such cases you don't want to model the semantics of that data in OGIT ontology or at least you don't want to do it, yet.

Then CustomApplicationData comes to your rescue. 

### How it is used?

* there is an entity type 'ogit/CustomApplicationData' which does not have any pre-defined attributes
* 'ogit/CustomApplicationData' allows free form attributes (anything the name of which starts with /)
* vertices of type 'ogit/CustomApplicationData' can be connect to others of the same type using verb 'ogit/uses'
* vertices of type 'ogit/CustomApplicationData' cannot be connected to vertices of any other type. 
* If you need to refer from a vertex of 'ogit/CustomApplicationData' to one of another type (in either direction) you can only use "weak references", i.e. you can store the unique id of the other vertex in some attribute
