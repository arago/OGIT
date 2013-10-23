#This is CIMI Readme.md

Here you'll find the NTO enablement for DMTF CIMI - Cloud Infrastructure Management Interface.

##CIMI Background

The scope of the CIMI standard covers core IaaS functionality; it's about deploying and managing Machines, Volumes, Networks, Monitoring, etc. Once you've interfaced to the IaaS provider, the information you need to manage your cloud service can be discovered iteratively, including the metadata describing capabilities and resource constraints.

The model behind CIMI describes: resources (systems or collections of resources managed as a whole, probably as an OVF file); machines (a computing resource with CPU and memory); volumes (storage); and networks (representing a layer 2 broadcast domain). It also describes "meters" (metrics for some useful property of something) and event logs.

Most developers will deal with the CIMI REST/HTTP-Based Protocol, the current interface binding to the model (others are expected later). This delivers standard HTTP status codes and supports JSON and XML serialization formats. 

Description: [CIMI Model, v1.0.1](http://www.dmtf.org/sites/default/files/standards/documents/DSP0263_1.0.1.pdf)

Technical Whitepaper: [Tech Note](http://dmtf.org/sites/default/files/TechNoteCIMIv6_comments_10.31.12_0.pdf)
