#This is CIMI Readme.md

Here you'll find the NTO enablement for DMTF CIMI - Cloud Infrastructure Management Interface.

##CIMI Background

The scope of the CIMI standard covers core IaaS functionality; it's about deploying and managing Machines, Volumes, Networks, Monitoring, etc. Once you've interfaced to the IaaS provider, the information you need to manage your cloud service can be discovered iteratively, including the metadata describing capabilities and resource constraints.

The model behind CIMI describes: resources (systems or collections of resources managed as a whole, probably as an OVF file); machines (a computing resource with CPU and memory); volumes (storage); and networks (representing a layer 2 broadcast domain). It also describes "meters" (metrics for some useful property of something) and event logs.

Most developers will deal with the CIMI REST/HTTP-Based Protocol, the current interface binding to the model (others are expected later). This delivers standard HTTP status codes and supports JSON and XML serialization formats. 

Description: [CIMI Model, v1.0.1](http://www.dmtf.org/sites/default/files/standards/documents/DSP0263_1.0.1.pdf)

Technical Whitepaper: [Tech Note](http://dmtf.org/sites/default/files/TechNoteCIMIv6_comments_10.31.12_0.pdf)


##Schema

DMTF CIMI - Cloud Infrastructure Management Interface Schema Vers. 1.0.1\n\n

CIMI addresses the management of the lifecycle of infrastructure provided by a Provider (cloud server). 
CIMI does not extend beyond infrastructure management to the control of the applications and services that the 
Consumer (cloud client) chooses to run on the infrastructure provided as a service by the Provider.\n\n
   
The CIMI Model is documented in Chapter 5 of the CIMI standard (DMTF Paper DSP0263) and consists of 58 resources 
organized into\n\n

Cloud Entry Point – the starting point for finding all the other resources as well as the capabilities of this 
particular cloud\n 
Machine Resources – resources associated with the compute infrastructure\n 
Volume Resources – resources associated with the storage infrastructure\n 
Network Resources – resource associated with the networking infrastructure\n 
System Resources – the resources related to aggregate relationships of Machines, Volumes and Networks\n 
Monitoring Resources – the resources associated with metering and eventing of resources\n 
The whole syntax can found under http://schemas.dmtf.org/cimi/1/DSP8009.xsd.
