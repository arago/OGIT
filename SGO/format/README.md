### Overview

This directory contains commented template files for the different ontology elements: _Attribute_, _Entity_, _Verb_

General requirements:
 * The only namespace used in OGIT is `ogit/`
 * Other companies are encouraged to take responsibility for an NTO, e.g. `ogit/Forum`
 * NTO name is the grouping name, which does not necessarily have a semantical meaning
 * NTO/Entity/Attribute/Verb names should be unique
 * All SGO's will just start with `ogit/` which would be followed by the entity/verb/attribute name
 * All NTO's will start with `ogit/NTOName/`
    * Subsequential division of an NTO into sub-NTO's is not possible, e.g. `ogit/Forum/Profile` and not `ogit/Forum/Website/Profile`
 * Names of NTO's shouldn't contain organization names, but instead consist on a generalization. E.g. instead `arago/` -> `automation/`
 * The only possibility of having data stored in GraphIT not using the global ontology is strongly discouraged due to low performance but possible within the isolated  `ogit/CustomApplicationData/` namespace under `ogit/CustomApplicationData/appID/`
 * All entities should be allowed to have free attributes
 * There will be no inheritance

Requirements for _Attribute_ definitions:
 * The (base) name of an _Attribute_ will be `lowerCamelCase`, i.e. `[a-z][a-zA-Z]*`
 * Internal attributes (read only for applications) are prefixed with an underscore (`'_'`) 
 * Each _Attribute_ should be defined in a separate YAML file named like the (base) name of that attribute
   * File name should be `<attribute-name>.yaml`
   * Files will be placed into `attributes` sub-folder of context folder

Requirements for _Entity_ definitions:
 * NTO's define specialization in a certain area and could therefore contain more precise entities of a more general concept, e.g. `BusinessProcess/EscalationEvent`, `BusinessProcess/MessageEvent`
 * The (base) name of an _Entity_ will be `UpperCamelCase`, i.e. `[A-Z][a-zA-Z]*`
 * Each _Entity_ should be defined in a separate YAML file named like the (base) name of that entity
   * File name should be `<entity-name>.yaml`
   * Files will be placed into `entities` sub-folder of context folder

Requirements for _Verb_ definitions:
 * Verbs connecting two entities of different NTO's are only allowed after careful consideration of the OGIT Board
 * The (base) name of a _Verb_ will be `lowerCamelCase`, i.e. `[a-z][a-zA-Z]*`
 * Verbs should be used in the third person, e.g.: `transfers`, not `transfer`
 * Passive verb forms should be avoided, e.g.`_causes` and not `causedBy` .
 * No use of auxiliary verbs like `has***`, instead a word describing the semantic meaning should be used e.g. instead of having `Profile -- hasSettings --> Settings`, we could have `Profile <- configures -- Settings`
 * Not allowed, even for NTO's: The usage of verbs which also identify the Entity at the out end of the edge, e.g. `Forum/subscribesToProfile`.
 * Internal verbs (read only for applications) are prefixed with an underscore ('_')
 * Each _Verb_ should be defined in a separate YAML file named like the (base) name of that verb
   * File name should be `<verb-name>.yaml`
   * Files will be placed into `verbs` sub-folder of context folder

Since some of the requirements came into place in April 2015, some of the implemented ontology elements are being reviewed in order to comply to them.
