## Versioning in OGIT

* the version of OGIT will be distributed with the internal generated attribute *http://www.purl.org/ogit/_version*
* this attribute is mandatory for all entities
* the versioning is based on [semantic versioning] (http://semver.org)
* the version number is MAJOR.MINOR.PATCH
* MAJOR version when you make incompatible API changes like deletion or change of connections, attributes, entities and verbs
* MINOR version when you add functionality in a backwards-compatible manner like adding connections, attributes, entities and verbs
* PATCH version when you make backwards-compatible bug fixes, like description changes 
* when updating the ontology in graphit all entities will get automatically the new version in the internal generated attribute *http://www.purl.org/ogit/_version*
* instances (in graphit) of deleted entities will stay at the last recorded ontology version
