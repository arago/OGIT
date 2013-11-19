#ID Registration

##PURL - Persistent URL Service

To perceive a straightforward unique ID system for OGIT and vendor managed NTOs we are utilizing the [PURL - Persistent URL Service] (www.purl.org). This free service allows anybody to register and administer a URL under www.purl.org Domain. Because all domain registrations are undergoing an approval process it is assured the URLs are unique. Therefore it is used by popular Semantic Web Ontologies, like Dublin Core, Good Relations and schema.org.


##Format of URL

NTO-IDs are derived from the a PURL in the format

```http://www.purl.org/NTO_MAINTAINER/NTO_NAME/[entities|verbs|attributes|schema]/ITEM_NAME```

where ___NTO_MAINTAINER___ is a unique domain within the PURL system and ___NTO_NAME___ is a standard PURL, which can be managed by the individual NTO owner. 

An example would be 

```http://www.purl.org/arago/AutoPilot_Issue/entities/AutoPilotIssue```


##How To Use PURL


###Register a User or Group

To administer PURLs it is necessary to create a "maintainer", which can be am individual or a group.

See [User Administration](http://www.purl.org/docs/user) for detailed information about the management of individual users and the [Group Management section](http://www.purl.org/docs/groupcreate) for furter information about the management of user groups.

###Create a Domain

Individual PURLs are hosted inside a domain. The domain denotes the top level structure and there is designed to be a unique identifier. Therefore all domain creation requests are subject to a verification process, which may take up to 48 hours to complete.

For more Information see [Domain Creation](http://www.purl.org/docs/domaincreate) .

PURL Domains are used as as identifier for the NTO Maintainer

###Create PURLs

PURLs are used to create a unique identifier for elements in the OGIT structure. The first level of PURLs below a PURL-domain is used to denote the NTO name. The second level denotes the ontology item type, which could be either an entity, a verb, an attribute or a schema. With the third level the item name is described. 

