graphIT-ontology
================

arago AG Open Graph for IT Ontology Hub

You can find more information about the workings of OGIT on the [Wiki](https://github.com/arago/graphIT-ontology/wiki)

# arago Open Graph of IT

The strategy of building a semantic representation of all IT and its interaction with business processes and people requires a sound data space as a foundation for computational evaluation of this enterprise space.
Other approaches to create even a partial data space to cover IT like the IBM common data model have failed, because they required too much detail and did not allow any ambiguity or incorrectness. This is why arago has chosen a semantic model that allows varying levels of detail, accepts incorrectness and supports different classes of data is a way that will also allow proper handling from a computational perspective. 
This document describes the rough model implied and the methodology used to maintain and extend the meta model behind the arago open graph of IT. 

## The Meta Model
The foundation of the meta model is a 5 layer onion like definition of data spaces 

**1.	Semantic Graph Ontology - SGO**
    This upper level defines entity types and actions possibly connecting two entities in the graph data model. This is where the highest level of semantics is described that governs the whole data platform.  

**2.	Node Type Ontology – NTO**
    This level describes the sub ontology behind a specific node type, i.e. behind each entity defined on the SGO level there can be another ontology that represents the special needs of this node type. This is where subject matter expertise is put into the model on a semantic level. 

**3.	Specific Node Required Attributes – SNRA**
    Each node well defined by SGO and NTO will have a set of attributes that is specific to this unique type of node. The attributes required are a minimal set of attributes. In general the open Graph of IT can handle any data following the SGO,NTO typology, but the tools attached to the open graph of IT will only work properly if the SNRA definition is followed. 

**4.	Specific Node Best Practice Attributes – SNBA**
    Each well defined node type can have a number of attributes that have proven useful. If these attribute suggestions are followed reuse and effectiveness of platform resources (e.g. knowledge in automation, architectural benchmarks, etc.) are maximized.  

**5.	Specific Node Free Attributes – SNFA**
    The Free attribute space in every node is used by applications, users and organizations to add data structured according to their own needs, concepts and ideas. Data stored here uses the mechanisms of the open graph of IT for storage and the clients of the open graph of IT as tools, but does not count on any cross user reuse or platform wide distribution of effect, e.g. marketability. This section is also the source for best practices which will move up the chain into the SNBA section. As users use the same or similar attributes in the SNFA sections they will move into the SNBA section to become published and discussed in a platform wide distribution. 

## SGO – Semantic Graph Ontology
The top level of the semantic model behind the open graph of IT is the SGO. This level describes classic entities and actions connecting these entities. This is the highest level of data structure.  All entities represent knowledge, thus they are categorized as knowledge classes.
The entities can be sorted into 4 categories. Each of these categories has a different definition of the type of data it holds in terms of validity, volatility and level of correctness:

**1.	Global knowledge**
    describing long lasting meta definitions such as the ontology and sub ontologies itself, policies governing a specific environment etc. 
* a.	Volatility: extremely low
* b.	Validity: virtually infinite
* c.	Correctness: high

**2.	Factual knowledge**
    describing an actual state of the world such as the IT actually provisioned or planned, the contracts in existence, etc. 
* a.	Volatility: low
* b.	Validity: long
* c.	Correctness: low 

**3.	Actionable knowledge**
    describing different kind of possible activities and decisions like commands that can be executed, reactions to regulatory demands, etc. 
* a.	Volatility: high
* b.	Validity: virtually infinite 
* c.	Correctness: high

**4.	Situational knowledge**
    defining a situation of the current state of a model like monitoring data, events, KPIs, etc. 
* a.	Volatility: very high
* b.	Validity: very low
* c.	Correctness: very high

This classification for each entity on the top level of the ontology of the open graph of IT is done to have a classification in terms of use case, but also to determine the class of technology and algorithmic approaches valid when working with data from the respective sets (i.e. can caching be applied, is in memory technology a good choice, do algorithms need to deal with incorrectness, is ambiguity part of analytical approaches etc.). 
As a matter of visualization the three dimensions of volatility, validity and correctness can be condensed to a two dimensional magic-quadrant like view of volatility on the X-Axis and validity / correctness on the Y Axes. 
As mentioned the ontology and all its subsequent more detailed definitions are stored in the global knowledge part of itself. This means the open graph of IT will follow a “build yourself” approach in all terms of data, structure and platform. 

There are two kinds of data stored on the SGO level:

**1.	Entities**
    Describes the kind of data that is stored under this category

**2.	Verbs**
    Describes the type of connection and which entities can be connected by it. We do not use the term connection on purpose, because we want to ensure that new users coming from a relational approach should not be tempted to simply transfer their table model into semantic networks, but should know that a connection between two entities is something one entity does to or with another. Facebook calls these connection actions. We do not call it actions, because we have actionable knowledge and want to avoid misunderstandings. 

Generally all entity and verb data is kept in all versions. This is achieved by defining an interval of validity. Each component that does not have a validity end set is currently valid. The modified attributes of a component can only be different from the validity interval data if attributes were added.  
