#ID Registration

##PURL - Persistent URL Service

To perceive a straightforward unique ID system for OGIT and vendor managed NTOs we are utilizing the [PURL - Persistent URL Service] (www.purl.org). This free service allows anybody to register and administer a URL under www.purl.org Domain. Because all domain registrations are undergoing an approval process it is assured the URLs are unique. Therefore it is used by popular Semantic Web Ontologies, like Dublin Core, Good Relations and schema.org.


##Format of URL

Each ontology element, i.e. each attribute, verb, and entity has a PURL as unique ID. The general format of those PURLs are

```
http://www.purl.org/<namespace>/<itemname>
```

For example:
```
http://www.purl.org/ogit/has
http://www.purl.org/ogit/gr/category
http://www.purl.org/arago/AutoPilotIssue
```

As seen in the examples a namespace can have sub namespaces. In www.purl.org those namespaces are called _domains_. We recommended to not use more than two layers of domains.


##How To Use PURL


###Register a User or Group

To administer PURLs it is necessary to create a "maintainer", which can be an individual or a group.

See [User Administration](http://www.purl.org/docs/#user) for detailed information about the management of individual users and the [Group Management section](http://www.purl.org/docs/#groupcreate) for furter information about the management of user groups.

###Create a Domain

Individual PURLs are hosted inside a domain. The domain denotes the top level structure and there is designed to be a unique identifier. Therefore all domain creation requests are subject to a verification process, which may take up to 48 hours to complete.

For more Information see [Domain Creation](http://www.purl.org/docs/#domaincreate) .

PURL Domains have a maintainer and an optional list of writers. With a few exceptions there is a one-to-one relationship between those domains, namespaces, and NTOs. 

Hence, the maintainers and writers for a domain are considered the maintainers of that NTO.

###Create PURLs

PURLs are used to create a unique identifier for elements in the OGIT structure. If you are maintainer and/or writer of the PURL domain corresponding to the OGIT ontology namespace you're working on, The recommended procedure is as follows:
- register the PURL for a new ontology element
- define the ontology element using the registered PURL as ontology elmenent ID
This way any ID conflicts are prevented.

