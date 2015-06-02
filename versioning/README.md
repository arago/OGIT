## Versioning in OGIT

* The version of OGIT is represented in the instances of entities, hence it's absense from verbs and attributes.
* The version of OGIT will be distributed with the internal generated attribute *http://www.purl.org/ogit/_version*

### How will it work in GraphIT?

* When updating the ontology all entity instances will get automatically the new version in the internal generated attribute *http://www.purl.org/ogit/_version*
* Instances of deleted entities will stay at the last recorded ontology version

### How to increment the version 

* The versioning is based on [semantic versioning] (http://semver.org)
* The version number is MAJOR.MINOR.PATCH
 * MAJOR version when you make incompatible API changes like deletion or change of connections, attributes, entities and verbs
 * MINOR version when you add functionality in a backwards-compatible manner like adding connections, attributes, entities and verbs
 * PATCH version when you make backwards-compatible bug fixes, like description changes 
