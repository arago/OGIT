# Welcome to the 'Open Graph for IT' Ontology

# Targets of this repository

The information provided here is aimed at implementors and vendors planning to use the **Open Graph of IT**. Here you'll find all information about implementing, contributing and integrating the OGIT within a enterprise IT environment as well as best pratices and links to actual implementations of the OGIT.

# What is the Open Graph of IT (OGIT)

The strategy of building a semantic representation of all IT and its interaction with business processes and people requires a sound data space as a foundation for computational evaluation of this enterprise space.

Here you'll find an approach we call "OGIT - The Open Graph of IT", which will be the foundation of an 'IT version' of **Google's Knowledge Graph** oder Facebooks **Social Graph**. A specification that every interested party is free to use and to extend utilizing an community-based process, we will be definig in the near future.

Please have a look at the [Basic Concepts section](https://github.com/arago/graphIT-ontology/wiki/Basic-Concepts) in the Wiki for deeper look at OGIT.

## Goals and Components of OGIT

*** ++++ please edit ++++ ***

The OGIT platform will fulfill several tasks:

1.	Store all historic and current data of the open graph of IT

2.	Make this data accessible though several low and high level APIs

3.	Make this data accessible from the outside though an access managed graph API

4.	Allow clients to perform complex queries on this data though the APIs

5.	Allow core clients to run on the platform with direct or low level API access to the data to maximize their performance.

## The Meta Model

The foundation of the OGIT meta model is a 5 layer *onion-like* definition of data spaces 

**1.	Semantic Graph Ontology - SGO**
    This upper level defines entity types and actions possibly connecting two entities in the graph data model. This is where the highest level of semantics is described that governs the whole data platform. 
    These Ontologies are maintained by the SGO Board. 

**2.	Node Type Ontology – NTO**
    This level describes the sub ontology behind a specific node type, i.e. behind each entity defined on the SGO level there can be another ontology that represents the special needs of this node type. 
    Here is where subject matter expertise is put into the model on a semantic level. 

**3.	Specific Node Required Attributes – SNRA**
    Each node well defined by SGO and NTO will have a set of attributes that is specific to this unique type of node. The attributes required are a minimal set of attributes. In general the open Graph of IT can handle any data following the SGO,NTO typology, but the tools attached to the open graph of IT will only work properly if the SNRA definition is followed. 

**4.	Specific Node Best Practice Attributes – SNBA**
    Each well defined node type can have a number of attributes that have proven useful. If these attribute suggestions are followed reuse and effectiveness of platform resources (e.g. knowledge in automation, architectural benchmarks, etc.) are maximized.  

**5.	Specific Node Free Attributes – SNFA**
    The Free attribute space in every node is used by applications, users and organizations to add data structured according to their own needs, concepts and ideas. Data stored here uses the mechanisms of the open graph of IT for storage and the clients of the open graph of IT as tools, but does not count on any cross user reuse or platform wide distribution of effect, e.g. marketability. This section is also the source for best practices which will move up the chain into the SNBA section. As users use the same or similar attributes in the SNFA sections they will move into the SNBA section to become published and discussed in a platform wide distribution. 

# How can I contribute?

Please help us to grow the **Open Graph of IT** by contributing to this project. See our [Open Graph of IT Contribution Document](https://github.com/arago/graphIT-ontology/blob/master/CONTRIBUTING.md) for more details on submitting suggestions and starting discussions about OGIT. 

If you have general questions or need support please contact us at <ogit@arago.de>

# License

Please see [LICENSE.md](https://github.com/arago/graphIT-ontology/blob/master/) for information about the licensing.

