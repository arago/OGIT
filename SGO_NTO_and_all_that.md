Alt-H2 Open GraphIT, SGO, NTO, and all that
====

H3 GraphIT type system

Open GraphIT is a Graph representing the IT world in a __structured__ way.

Using more technical terms __structured__ means:

* There will be type hierarchy for nodes
* Edges will also be typed in the sense that each edge type has some restriction on the tail and head node types it can connect
* Node types will have some restriction on the (literal) attributes that can be stored into it

That __type sytem__ is related to our Meta Model in the following way:

1. SGO will provide a basic node and edge type sytem 

2. NTO will refined SGO's type system by introducing additional (derived) node types and additional egde types (new types of relations)

3. all attributes/relations for a node type defined in the SGO type system will form the **Specific Node Required Attributes – SNRA**. NOTE: in this context the term __required__ has nothing to do with the fact whether a specific attribute must have value or node. 

4. all attributes/relations for a (NTO) node type (usually by some schema) which are made known to the SGO layer of GraphIT will form the **Specific Node Best Practice Attributes – SNBA** set.

5. the node/edge type system allows extensions (without the need to expose them to others - especially the pre-defined SGO/NTO type system won't know them). All those __local__ extensions will form the **Specific Node Free Attributes – SNFA** set.

In the following we usually simply refer to just SGO and NTO implicitly referrring to some of those __attribute__ classes as well.
 
H3 Boundary between SGO and NTO

GraphIT is mostly based on the fixed part of the aforementioned type system. The type system ensure that stored data will follow the intended semantics.

But that type system is expected to evolve over time. More types/relations/attributes will be added to allow a more detailed view of the IT world.

Additionally it will be possible to incorporate existing structure data, i.e. data describing IT objects that will be conform to some kind of __schema__.

The different parts of the type system allow a distributed management of it.

The SGO (which forms the core of the type system) will be maintained centrally by the __SGO Board__.

The management of other parts of the type systems (NTOs) can be distributed.

However, the SNRA layer requries NTO defined types to be suitably connected to the core (SGO) type system. 

We call this **NTO enablement**. 

NTO enablement will produce some glue between SGO defined types and NTO defined types. That's why each type belongs to one of the three following _scopes__:

H4 "pure" SGO scope

Node and edge types that are part of the (growing) core type system are said to have (pure) SGO scope.

SGO node types can be used as is but in most cases only derived sub-types will be used.

SGO node and edges types won't have an external schema. (to be more precise: no external schema will be used to validate data instances)


H4 SGO/NTO scope

Node and egde types of 'SGO/NTO scope' form the boundary/glue between SGO and externally managed ontologies/schemas. Those types are usually defined as result of the [NTO enablement process].

"NTO enablement" consists of exposing some parts of the NTO to allow relations (edges) between nodes of that NTO to nodes of SGO or other (exposed) NTOs.

in detail "NTO enablement" might consist of:
+ adding new node types of (being subtypes of some existing pure SGO node types)
+ adding new edge types between the defined new node types and existing node types (eiter pure SGO or SGO/NTO scope)
+ adding new edge types between the defined new node types.


H4 "pure" NTO scope

By default the "content" of an NTO node will be stored in some node attribute (that's similar to a CLOB in the relational database world).

In some cases, however, it might be interesting to make (some parts of) the node content part of the graph (but without exposing the internal structure to the SGO).
In that case it is possible to define additional node and edge types to represent the internal structure of nodes (having a node type with SGO/NTO scope). 

Those node and edge types will then have (pure) NTO scope which means:
+ the sub-graph containing those node and edge types is connected only to nodes of SGO/NTO scope (for same NTO) but never to nodes having SGO scope or SGO/NTO scope of another NTO.


