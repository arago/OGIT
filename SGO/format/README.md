### Overview

This directory contains commented template files for the different ontology elements: _Attribute_, _Entity_, _Verb_

Requirements for _Attribute_ definitions:
* the first letter of each attribute (base) name must be lower case
* internal attributes (read only for applications) will have names starting with '_' followed by a lowercase letter
* the (base) name of an attribute will be camel case (minus '-' is allowed)
* each _Attribute_ should be defined in a separate YAML file named like the (base) name of that attribute
  * file name should be `<attribute-name>.yaml`
  * file will be placed into `attributes` sub-folder of context folder

Requirements for _Entity_ definitions:
* the first letter of each entity (base) name must be upper case 
* the (base) name of an entity will be camel case 
* each _Entity_ should be defined in a separate YAML file named like the (base) name of that entity
  * file name should be `<entity-name>.yaml`
  * file will be placed into `entities` sub-folder of context folder

Requirements for `Verb` definitions:
* the first letter of each verb (base) name must be lower case 
* the (base) name of a verb will be camel case 
* each _Verb_ should be defined in a separate YAML file named like the (base) name of that verb
  * file name should be `<verb-name>.yaml`
  * file will be placed into `verbs` sub-folder of context folder

