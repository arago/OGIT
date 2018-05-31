# Representing MARS in OGIT ontology

## Overview

All definition in the _ogit/MARS_ namespace aim to have a proper modelling of
[MARS Nodes](https:///github.com/arago/MARS-Schema) as graph data.

Those definitions will obsolete

* [MARS XML Schema](https://github.com/arago/MARS-Schema/blob/master/schemas/MARSSchema2015.xsd)
* Modelling of MARS nodes in the [Automation NTO](../Automation/)


## Transition to MARS NTO

### Entity Mappings

instead of just one entity type `ogit/Automation/MARSNode` there are now four:

* `ogit/MARS/Application`
* `ogit/MARS/Resource`
* `ogit/MARS/Software`
* `ogit/MARS/Machine`

### Attribute Mappings

general remarks:

* `/ID` is supposed to be stored in `ogit/_xid` (user provided indentifiers)
* `/NodeName` is mapped to `ogit/name`
* `/NodeType` is mapped to `ogit/_type` (one of the four entity types)
* the following attributes from `ogit/Automation/MARSNode` become obsolete:
  * `ogit/Automation/marsNodeFormalRepresentation`
  * `ogit/Automation/marsNodeType` (replaced by `ogit/_type`)
* a few attributes from  `ogit/Automation` NTO have been reused
* attributes from SGO or other NTOs have been reused when appropriate
* the following attributes were added without having a corresponding definition in MARS XML Schema:
  * `ogit/url` for "Software" and "Resource"
  * `ogit/serialNumber` for "Software"
* only a subset of attributes defined by MARS XML Schema is mapped to _ontology defined attributes_. All others will remain "free attributes"
* the following _classification attributes_ have a predefined list of allowed values:
  * ApplicationClass, ApplicationSubClass
  * ResourceClass
  * MachineClass
* the values of _classification attributes_ for Software MARS nodes are not validated, yet

The full mapping is defined [here](AttributeMapping.md).

### Verb Mappings

* `ogit/Automation/MARSNode -ogit/relates-> ogit/Automation/MARSNode` is replaced by:
  * `ogit/MARS/Application -ogit/dependsOn-> ogit/MARS/Resource`
  * `ogit/MARS/Resource -ogit/dependsOn-> ogit/MARS/Software`
  * `ogit/MARS/Software -ogit/dependsOn-> ogit/MARS/Machine`
* most relationships for `ogit/Automation/MARSNode` are also allowed for `ogit/MARS/*`:
  * everything from the `ogit/ServiceManagement` NTO
  * relations to objects with secondary data: `ogit/Timeseries`, `ogit/Attachment`, ...
  * when appropriate the new mappings are only for specific MARS nodes, e.g. only `ogit/MARS/Application`
* some relationships for `ogit/Automation/MARSNode` were not duplicated for `ogit/MARS/*` (at least not yet):
  * most relationships between `ogit/Automation/MARSNode` and other entities from `ogit/Automation` NTO
