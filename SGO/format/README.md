### Overview

This directory contains commented template files for the different ontology elements: _Attribute_, _Entity_, _Verb_

General requirements:
 * Other companies are encouraged to take responsibility for an NTO, which name would have semantical meaning, e.g. 'ogit/Forum'
 * All SGO's will just start with "ogit/" which would be followed by the entity/verb/attribute name
 * All NTO's will start with "ogit/NTOName/", where NTOName should have a semantical meaning
    * Subsequential division of an NTO into sub-NTO's is not possible, e.g. ogit/Forum/Profile and not ogit/Forum/Website/Profile
 * Names of NTO's shouldn't contain organization names, but instead consist on a generalization. E.g. instead arago/ -> automation/
 * The only possibility of having data stored in GraphIT not using the global ontology is strongly discouraged due to low performance but possible within the isolated  ogit/CustomApplicationData/ namespace under ogit/CustomApplicationData/appID 
 * All entities should be allowed to have free attributes
 * There will be no inheritance

Requirements for _Attribute_ definitions:
* the first letter of each attribute (base) name must be lower case
* the (base) name of an attribute will be camel case, i.e. [a-z][a-zA-Z]*
* internal attributes (read only for applications) are prefixed with an underscore ('_') 
* each _Attribute_ should be defined in a separate YAML file named like the (base) name of that attribute
  * file name should be `<attribute-name>.yaml`
  * file will be placed into `attributes` sub-folder of context folder

Requirements for _Entity_ definitions:
* NTO's define specialization in a certain area and could therefore contain more precise entities of a more general concept, e.g. BusinessProcess/EscalationEvent, BusinessProcess/MessageEvent
* the first letter of each entity (base) name must be upper case 
* the (base) name of an entity will be camel case, i.e. [A-Z][a-zA-Z]*
* each _Entity_ should be defined in a separate YAML file named like the (base) name of that entity
  * file name should be `<entity-name>.yaml`
  * file will be placed into `entities` sub-folder of context folder

Requirements for `Verb` definitions:
* Verbs connecting two entities of different NTO's are only allowed after careful consideration of the OGIT Board
* the first letter of each verb (base) name must be lower case 
* the (base) name of a verb will be camel case, i.e. [a-z][a-zA-Z]*
* verbs should tendentially be used in their third person, e.g.: transfers
* no use of auxiliary verbs like "has***”, instead a word describing the semantic meaning should be used e.g. instead of having Profile -> has Settings, we could have Profile -> configures Settings
* Not allowed, even for NTO's: The usage of verbs which also identify the Entity at the out end of the edge, e.g. Forum/subscribesToProfile.
* internal verbs (read only for applications) are prefixed with an underscore ('_')
* each _Verb_ should be defined in a separate YAML file named like the (base) name of that verb
  * file name should be `<verb-name>.yaml`
  * file will be placed into `verbs` sub-folder of context folder

Since some of the requirements came into place in April 2015, some of the implemented ontology elements are being reviewed in order to comply to them.
