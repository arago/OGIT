# Formal Representation of the Ontology

## a documented example

We use a YAML format to describe the [type system](../SGO_NTO_and_all_that.md) of both SGO and NTO enabling/mapping. 

Instead of presenting some grammer definition we present an example [here](example_extension_request.yaml). 

Let's now look at each part of the example. First a new attribute (scalar property) is defined

```
- attributeType:
  name: "color"
  description: "the color of something"
  type: java.lang.String
```

Each attribute definition must have a **name**. That name must be unique across all defined attributes.

**description** is optional but highly recommended. It tells the users the meaning of that attribute.

**type** is optional. If no type is specified then String as assumed.

Now a new nodeType is defined:

```
- nodeType:
  name: "Car"
  description: "something you can drive"
  parentNodeType: "FactualNode"
  scope: SGO
  attribute:
  - name: "color"
    mandatory: true
```

Again **name** is the mandatory unique identifier of the new type and **description** should be used to briefly define the meaning of the new nodeType.

**parentNodeType** must refer to the **name** of an existing nodeType. Each nodeType inherits allowed attributes and edges from it's ancestor types.

Hence there is no need to repeat any definitions for attribute and allowed edges that are already defined for the parent (or grand-parent, and so on).

Eeach nodeType can have only one parent type.

**scope** defines how this definition can be used within other definitions. Details can be found [here](../SGO_NTO_and_all_that.md)

**attribute** defines a list of attributes this nodeType allows. Only attributes already defined (using 'attributeType'') are allowed. Each attribute list entry is of the form:

```
  - name: "color"
    mandatory: true
```

**name** refers to an existing attributeType. The **mandatory** flag defined whether this attribute is mandatory or optional. If not specified "mandatory=false" will be assumed.

At last the example defines a new edgeType:

```
- edgeType:
  name: "isDrivenBy"
  description: "points to node describing current driver"
  scope: SGO
  allowedConnection:
  - tailNodeType: "Car"
    headNodeType: "Person"
```

As before **name** is the mandatory unique identifier of the new type and **description** should be used to briefly define the meaning of the new edgeType.

**scope** is used here in the same manner as for nodeType definitions.

Each edgeType has to have a list of **allowedConnection**s that must have at least one entry. Each such entry defines where this edgeType is allowed.

Our example definition
```
  - tailNodeType: "Car"
    headNodeType: "Person"
```
means: Each node(entity) of type "Car" can be connected to any node(entity) of type "Person" using the "isDrivenBy" edgeType(verb).

## used naming conventions:

* upper camel case for node type identifiers
* lower camel case for property names (edge type identifiers and attribute name)
** _ (underscore) followed by lower camel case for internally managed properties (those that can be read but not written)

## additional syntactic elements 

### Schema references (NTO only)

Usually NTOs will have external schemas. This can be registered to GraphIT using a definition like this:

```
- schema:
  name: "unique identifier for that schema"
  schemaType: "e.g. XMLSchema"
  schemaURI: "for XMLSchema this will be the xmlns URI"
  schemaVersion: "version of that schema"
  schemaLocation: "where the schema is defined or can be found (might be different from schemaURI)"
  schemaMaintainer: "who maintains this schema" 
```

It's good practice to make the schema version part of **name** to allow more then one version of the same schema to be registered.

### nodeType

The following additional settings can be used in a *nodeType* definition:

| *schema*      | defines schema this nodeType definition was derived from. value must refer to an already defined schema |
| *allowAnyAttribute*      | if this is defined with value 'true' then for instances of that nodeType any attribute will be allowed. If not defined allowAnyAttribute=false is assume |


### edgeType

| *functional* | if set to value 'true' then each node (having a type which is an allowed tailNodeType for this edgeType) can have at most one (outgoing) edge of that type |
| *inversefunctional* | if set to value 'true' then each node (having a type which is an allowed headNodeType for this edgeType) can have at most one (ingoing) edge of that type |
