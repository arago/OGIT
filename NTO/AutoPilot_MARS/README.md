NTO: AutoPilot MARS
-----

This directory contains the definition of the AutoPilot MARS NTOs


Schema:
--

MARS is a lean and simple modeling “language” created for describing IT environments and components 
and their relations. Unlike a CMDB, which was created to support manual processes and to provide human 
readable information (and therefore is very hard to setup and maintain), MARS was created with automated 
operations and visualization in mind. It contains just enough information to minimize the maintenance efforts.

The MARS model builds upon four basic types of objects with a single type of relationship. 
Basically the objects which are in fact called “nodes” represent both views - the business perspective and the 
technical view. The technical components are modeled in the machine and software layers while the application 
and resource layers describe the business view of the IT environment.
The MARS-Schema can found under https://github.com/arago/MARS-Schema/blob/master/schemas/MARSSchema2013.xsd.
