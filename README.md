arago AG Open Graph for IT Ontology Hub
================
You can find more information about the workings of OGIT on the [Wiki](https://github.com/arago/graphIT-ontology/wiki)

# arago Open Graph of IT

The strategy of building a semantic representation of all IT and its interaction with business processes and people requires a sound data space as a foundation for computational evaluation of this enterprise space.
Other approaches to create even a partial data space to cover IT like the IBM common data model have failed, because they required too much detail and did not allow any ambiguity or incorrectness. This is why arago has chosen a semantic model that allows varying levels of detail, accepts incorrectness and supports different classes of data is a way that will also allow proper handling from a computational perspective. 
This document describes the rough model implied and the methodology used to maintain and extend the meta model behind the arago open graph of IT. 

## Goals and Components 

The platform has to fulfil several tasks:
1.	store all historic and current data of the open graph of IT

2.	make this data accessible though several low and high level APIs

3.	make this data accessible from the outside though an access managed graph API

4.	allow clients to perform complex queries on this data though the APIs

5.	allow core clients to run on the platform with direct or low level API access to the data to maximize their performance.


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

## NTO – Node Type Ontology

For each entity there is a sub ontology defining the different kinds of the same entity.
The differentiation between SGO and NTO is made to allow subject matter experts to deal with NTO definitions while strategic experts deal with the definition of the big picture. 

NTO is for the subject matter experts and can go into greater detail. 

Subject matter experts can chose to describe the NTO level as typology trees or as sub ontologies themselves.  The NTO is a typology behind an entity defined on the SGO level but it includes links to the attributes required, recommended or includable in the specifically defined type. This can follow an OO or single declaration approach. 

Typically an NTO description will contain links to the attribute descriptions and an include facility for the free attributes which the user can then fill. 

The NTO has to be self contained. This means the NTO can define its own sub ontology, but it cannot define new actions or entities on the SGO level. 
For example using the SGO example when defining the sub ontology for fruit one might  create an ontology with the entity Fruit_Name and enumerate Banana, Apple, Orange and entities Skin and Actual_Fruit. These entities may have actions interconnecting each other but in order to move out of their NTO space they can only use the actions described on the SGO level. They can link into types of another NTO using these SGO actions however. 

This restriction guarantees that a sub graph of an NTO object can always be traversed and the NTO can be represented just as attributes of the original entity. 

An NTO Tech Contact can also opt to use an external well established definition for his sub entity. For example it might be desirable to use the “good relations” ontology for the commercial class entity. 

### NTO Admin Contact

The NTO Admin Contact is one or more persons chosen by the ontology board to maintain the administrative procedures for a sub ontology for a specific entity in the SGO. 
The following action can be performed by an NTO Admin Contact

1.	approve new node type 

2.	change node type description -> only when migration path is clear

3.	approve migration procedures

4.	appoint tech contacts and subject matter experts involved in the NTO

5.	discuss changes to SN*A procedures with ontology board

The following documents will be maintained by the NTO Admin Contacts:
1.	Schema for NTO at pre defined URLs

2.	Migration catalogue to move from version of the NTO schema to another

3.	List of subject matter experts and their roles involved in this NTO

4.	Procedures for user engagement Tech Contacts for this NTO have to follow. 

5.	Procedure document users must follow when dealing with attributes

The admin contact for an NTO is not running contact platforms for changes built is published on such contact platforms for escalations. If the NTO relies on an external ontology the Admin Contacts are responsible for establishing and maintaining partnership relations with the entity defining the ontology used. 

### NTO Tech Contact

Tech Contacts for an NTO are publically visible ambassadors fort he NTO description. They maintain the attribute space  and can elevate best practice attributes to required attributes and free attributes to best practice attributes. They are responsible for communicating and discussing changes with users. They perform the following actions :
1.	Maintain user contact
2.	Operate user contact platform
3.	Maintain mechanism for users to request attributes to be come part of best practices
4.	Approve  or disapprove SNBA
5.	Maintain SN*A mechanisms and descriptions

Tech Contacts maintain the following documents:
1.	SN*A definitions at predefined URLs
2.	Procedure catalogue for SNBA requests describing the conditions under which an attribute will be added to the SNBA
3.	Procedure catalogue for SNRA requests describing the conditions under with an attribute will be added to the SNRA list. 

Tech Contacts can involve subject matter experts into their work and give them specific roles in their respective user communities. 

Every time a tech contact approves or disapproves an SNBA this has to be reported to the ontology board. The decision has to be argued in short either verbally or by referencing to the appropriate section of the procedures approved by the ontology board. 

## SNRA, SNBA, SNFA – Specific Node Attributes

Each of these attribute sections describes attributes available or used with a well defined note type (SGO:NTO). The SNRA are always included and will be syntax checked by the open graph of IT access methodologies. The SNBA should be used and syntax checking for these is default but can be turned off and the SNFA are free and their definition can be included freely by the user. 

The NTO Tech Contact has to provide means to include specific free attributes in a local instance of the whole ontology without touching the SGO, NTO, SNRA sections and without having to modify the SNBA section. 

