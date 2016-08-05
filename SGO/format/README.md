### Overview

This directory contains template files for the different ontology elements: _Entity_, _Attribute_ and  _Verb_.

OGIT Ontology Guidelines:

* The parent namespace used in OGIT is "http://www.purl.org/ogit/".
* Namespaces for NTO submodules are derived using concatenation, e.g., "http://www.purl.org/ogit/Automation/".
* Every entity, attribute and verb must have a unique URI.
* Other companies are encouraged to take responsibility for the namespace of an NTO, e.g. "http://www.purl.org/ogit/Forum/".
* All entities/attributes/verbs in the SGO will just start with "http://www.purl.org/ogit/" which is followed by the entity/verb/attribute name.
* All NTOs should start with with a capital letter, e.g. "http://www.purl.org/ogit/NTOName/".
* Names of NTOs shouldn't contain organization names, but instead consist of a general name.
* All entities will be allowed to have free attributes, i.e., attributes not specified in the schema.
* Inheritance is not allowed.

Requirements for _Attribute_ definitions:
* The first letter of the attribute name must be lower case
* The attribute name must be in camel case, i.e., [a-z][a-zA-Z]\*
* Internal attributes (read only for applications) are prefixed with an underscore ('\_').
* Each _Attribute_ should be defined in a separate Turtle file named like the name of that attribute.
  * The file name should be `<attribute-name>.ttl`.
  * The file will be placed into `attributes` sub-folder of the context folder.

Requirements for _Entity_ definitions:
* NTOs define specialization in a certain area and could therefore contain more precise entities of a more general concept, e.g., BusinessProcess/EscalationEvent, BusinessProcess/MessageEvent.
* The first letter of each entity name must be upper case.
* The name of an entity must be in camel case, i.e., [A-Z][a-zA-Z]\*
* Each _Entity_ should be defined in a separate Turtle file named like the name of that entity.
  * The file name should be `<entity-name>.ttl`.
  * The file will be placed into `entities` sub-folder of the context folder.

Requirements for _Verb_ definitions:
* Verbs connecting two entities of different NTOs are only allowed after careful consideration of the OGIT Board.
* The first letter of each verb name must be in lower case.
* The name of a verb must be camel case, i.e., [a-z][a-zA-Z]\*
* Verbs should be used in their third person, e.g., _transfers_.
* Passive verb forms should be avoided, e.g., use _causes_ instead of _causedBy_.
* No use of auxiliary verbs like "has`***`", instead use a word that describes the semantic meaning, e.g., instead of having Profile -> has Settings, we could have Profile -> configures Settings.
* Not allowed, even for NTOs: The usage of verbs which also identify the entity at the outgoing end of the edge, e.g., `http://www.purl.org/ogit/Forum/subscribesToProfile`
* Internal verbs (read only for applications) are prefixed with an underscore ('\_')
* Each _Verb_ should be defined in a separate Turtle file named like the name of that verb.
  * The file name should be `<verb-name>.ttl`.
  * The file will be placed into `verbs` sub-folder of the context folder.
