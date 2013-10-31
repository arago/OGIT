# Contributing to the OGIT project

## How to contribute

Please use the [GitHub Issue Feature](https://github.com/arago/graphIT-ontology/issues) for logging a new request or submitting a suggestion. We will take care of the issue as soon as possible.

Feel free to use the [Github Fork/Pull mechanism](https://help.github.com/articles/fork-a-repo) if you want to extend the ontology. We will review and discuss the requested extension and come back to you.

If you have any kind of question please contact us at <ogit@arago.de> .

## Contributing to SGO

Change requests for SGO might include:
* add some attribute to an existing SGO "entity"
* add a new "entity" with SGO scope
* add a new "verb"
* add a new "allowed" stanza to an existing "verb" (i.e. extend applicability of a "verb")

The easiest way to do this is to provide new or updated YAML files according to the [specified syntax](SGO/format/README.md). 

## Enable a new NTO

NTO-Enablement means exposing some parts of your ontology/schema as 'entities' with 'attributes' and 'verbs' to define relationships.

The formal definition will use the same [YAML syntax](SGO/format/README.md) which is also used for SGO.

There is one additional class of definitions which we don't need for SGO: [schema](SGO/format/schema/Schema.yaml). This creates a reference to the external schema/ontology the NTO enablement is based upon.

Enabling and NTO usually involved the following things:

* add schema defintion(s)
* add attribute definitions if your NTO 'entities' need attributes which are not already there
* add 'entity' definitions:
  - set scope to 'NTO'
  - set schema reference
  - set parent (must point to an existing 'entity' definition)
  - list 'mandatory' and 'optional' attributes
* if you can reuse existing 'verbs'
  - add new 'allowed' stanza if you want to allow your 'entity' as left or right side of that 'verb' (and this is not allowed by inheritance, yet)
* if you need new a 'verb'
  - add 'verb' definition
  - add necessary 'allowed' stanzas

Of course a change request might also be placed to add to an existing NTO enablement.

