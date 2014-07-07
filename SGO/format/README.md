### Overview

This directory contains commented template files for the different ontology elements: Attribute, Entity, Verb

Requirements for `Attribute` definitions:
* the first letter of each attribute (base) name must be lower case
* internal attributes (read only for applications) will have names starting with '_' followed by a lowercase letter
* the (base) name of an attribute will be camel case (minus '-' is allowed)
* each `Attribute` should be defined in a separate YAML file named like the (base) name of that attribute
  * file name should be __attribute-name__.yaml
  * file will be placed into __attributes__ sub-folder of context folder

Requirements for `Entity` definitions:
* the first letter of each entity (base) name must be upper case 
* the (base) name of an entity will be camel case 
* each `Entity` should be defined in a separate YAML file named like the (base) name of that entity
  * file name should be __entity-name__.yaml
  * file will be placed into __entities__ sub-folder of context folder

Requirements for `Verb` definitions:
* the first letter of each verb (base) name must be lower case 
* the (base) name of a verb will be camel case 
* each `Verb` should be defined in a separate YAML file named like the (base) name of that verb
  * file name should be __verb-name__.yaml
  * file will be placed into __verbs__ sub-folder of context folder

