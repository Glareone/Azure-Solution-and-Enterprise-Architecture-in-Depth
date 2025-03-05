<img width="1023" alt="image" src="https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/8a256ffa-1c69-45ea-9bdb-ee4fefa542b3"># ToGAF
## Table of Content
1. [Basics](#basics)
2. [Enterprise Continuum shortly](#enterprise-continuum)
3. [Togaf 9.x vs 10](#togaf-9x-vs-10-changes)
4. [Togaf Level 1 Certification](#togaf-level-1-certification)
5. [Togaf Level 2 Certification](#togaf-level-2-certification)
6. [7 Core Concepts](#7-core-concepts)
7. [The ADM](#adm-architecture-development-method)
   - [Initial State. Basics](#before-start-initial-state)
   - [Preliminary Step](#adm-preliminary-phase)
   - [A. Architecture Vision](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-1-A-architecture-vision.md)
   - [B. Business Architecture](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-2-B-business-architecture.md)
   - [C. Information Systems Architecture. Data and Application Architecture](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-3-C-Information-systems-architecture.md)
   - [D. Technology Architecture](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-4-D-technology-architecture.md)
   - [E. Opportunities and Solutions](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-5-E-opportunities-and-solutions.md)
   - [F. Migration Planning](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-6-F-migration-planning.md)
   - [G. Governance](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-7-G-Governance.md)
   - [H. Architecture Change Management](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/phase-8-H-architecture-change-management.md)
8. [Guidelines and Techniques of ADM Architecture Development Method](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/ADM-Guidelines-and-Techiniques.md)
9. [Governance Recommendations](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/Architecture-Governance-Techniques.md)
10. [Architecture Repository. Best practices](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/Architecture-Repository.md)
11. [Enterprise Continuum](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/togaf/Enterprise-Continuum.md)


## Recommended courses:
https://www.udemy.com/course/togaf10-part1  

## Basics
**Architecture** by ToGAF:  
"It is the structure of components, their interrelationships and the principles and guidelines governing their design and evolution over time."
So, Architecture is:
* components of the system and their relations between each other
* AND the principles governing their design and evolution over time

**Architecture framework** answers on another question: "How do we do architecture?"  

Abbreviatures:  
**ADM** - Architecture Development Method  
**Architecture Content** - Artifacts, Documents, Lists, and all stuff comes to your repository  
**Enterprise Architecture Capability & Governance** - the ability of an organization to execute its strategy effectively with the help of its architecture.  
**Architecture Capability Framework** - is a set of resources, guidelines, templates, background information, etc. which provide help the architect to establish an architecture practice within an organization.    
**The Architecture Content Framework** - is a detailed model that outlines the types of architectural outputs or artifacts that will come out of the TOGAF cycle.  
   - Deliverables: These are contractually specified outputs of the project that are often made available to stakeholders. These might include architecture definitions, models, and contracts.  
   - Artifacts: These are components that make up an architectural deliverable. Examples could be diagrams, matrices, and inventories.  
   - Architecture Building Blocks (ABB) : These represent components at varying levels of detail that make up the system. They include functional elements, and their interrelationships, grouped to serve a specific purpose or function.  
**Architecture Deliveables**
**Deliverable** - a work product. Should be formally reviewed, agreed, and signed off by the stakeholders.  
**Artifact** -  an Architectural work product that describes an aspect of the architecture.  

**Deliverables vs Artifacts**  
Artifact doesn't get signed off on and approved. But this is something you're going to end up living by as you go through the rest of Enterprise Architecture process.  
Deliverable should be formally reviewed, agreed, and signed off by the stakeholders.  
Artifact 
* Principles Catalog (Preliminary Phase) - example of such artifact
* Architecture Building Blocks - example of deliverables which are the output of ADM process (or could be an input on Preliminary Phase)

### Why do I need Enterprise Architecture. Advantaged of using ToGAF and Enterprise Architecture
![image](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/94262c28-5c90-4ed5-a49f-51e8c138d2de)

![image](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/bf589bcb-3b64-4481-8235-ded8f91f9cbf)


## ToGAF 9.x vs 10. Changes
1. Standard Information Base -> Standards Library
2. Governance Log -> Governance Repository
3. Version number deliverables: 0.1 -> draft, 1.0 -> approved
4. (new) Architecture Alternatives
5. Architecture Building Blocks -> "ABBs" abbreviation is used
6. Solution Building Blocks -> "SBBs" abbreviation is used

## ToGAF Level 1 Certification
1. 40 questions over 60 minutes
2. multiple answers, only one correct answer
3. need to pass 55%, 22 answers out of 40 should be correct
4. each correct answer is worth 1 point

## ToGAF Level 2 Certification
1. A test how you apply the ToGAF Standard
2. Must have passed Level 1. 
3. A scenario based test, gradient scoring
4. Open Book Exam
5. 8 questions over 90 minutes
6. need 60% to pass

## The Open Group Architecture Foundation. Principles
![image](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/b802ae96-b7ff-4796-a765-53d7515cd33a)

## Enterprise Continuum
On the left you have the most generic documents that can be called foundation architectures, and on
the right you have organization specific architectures that are only specific to your organization,
and then you have a couple of things in between.
![image](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/f7333c11-ae74-4b21-be0c-958952ad0fa8)

## Solution Continuum
![image](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/95ca9cee-17d5-4f66-a259-acec55d0e518)
* Architecture answers on questions "what should be done"  
* Solution answers on "how it could be achieved"  

* Foundational Architecture could be applied in almost any company in the world in almost any industry
* Common System Architectures goes a little bit deeper. Service Oriented Architecture call be an example of Common System Architectures. Not any business can apply SOA, but it's still quite generic.
* Industry Architectures - architectures and standards with specifics for certain business domains like banking. If you are not in baking you dont need to worry about
* Organization-Specific Architectures - the most specific architectures, generally you or someone in your team created

## 7 Core Concepts
* The definition of enterprise
    - Highest level of description for an organization
    - The main goal - is to find your Scope, to get where the scope is before you start. The worst - do the job for departments which never ever will read your documents
* BDAT. The Architecture Domains
    - BDAT acronym means: Business, Data, Application, Technology.
        * Business - how you accepts customers, how do you create products. Processes about how do you conduct your business.
        * Data - is about data and databases, content in these databases
        * Application - is all about software. Out of shelf software or custom designed software you use to run in your organization
        * Technology - the lowest level. Your IT infrastructure, servers, cables
* ADM. The Architecture Development Method. Phases from A -> H
    - ADM is the process you can follow to define the Enterprise architecture.
    - It consists of several phases, from A -> H in a circle:
        * Preliminary Phase - it's just setting the stage to get started and check you have all you need to get started creating enterprise architecture
        * Phase A: Vision - is about articulating the business objectives and the broader vision for your organization. It involves defining how you'll structure each architectural domain to align with and achieve these business goals.
        * Phases B, C, D: Phases related to BDAT. Putting them together you get the Enterprise Architecture. At the end of phase D you have a draft version of Enterprise Architecture.
        * Phases E, F: Planning. Address your business' readiness to transformation
        * Phase G: Implementation. You communicate with the teams and departments and say here is the plan we are going to go over next months. It should not be a shock to them.
        * Phase H: Change Management. Monitoring and making minor changes. Monitoring that your vision is being met. On this stage you can make small changes to your architecture if you see that something does not exacly working as expected without having to go through the whole cycle (A->H) again.
* Deliverables, Artifacts, and Building blocks - outputs fall under broad category named Architecture Content Framework
    - Artifacts - architectural work product which describes an aspect of the architecture. It's not a full document, it's not a draft architecture.
        * (List, Matrix, Grid, Diagram) Typically it's list or matrix that show the relationship between things. These things may go into different documents.
    - Deliverables - architectural work product that was created. It's formally reviewed, approved, and signed off by stakeholders.  
      For deliverables you should make their copies and version them to be able to get back to one of previous versions created a long ago.
        * The result of ADM process is the set of key deliverables.
        * They might be Architectural Specifications for DBAT
        * Migration Plans
        * Implementation Plans
        * They specify the output of the entire process.
    - ABBs. Architecture Building Blocks - potentially reusable components and designs. You could reuse your diagrams on other iterations. For example if you have an architecture for a call center you may reuse it if you need another call center for another purposes. It's more capability associated rather than SBBs.
    - SBBs. Solution Building Blocks - this is how the required capability is implemented, implementation side of ABBs. Talking about call center from ABB, the solution will be the software, the people, the building, the floor, the cables, etc. Those are building blocks for solutions.
      Another example for ABB and SBB is - if customer is needed to manage the data, the ABB is the capability to manage this data, solution is CRM system you decided to build.
* The Enterprise Continuum. It's a way to classify all documents you gathered whether they are source documents or outputs which you gather in a journey to create your Enterprise Architecture.
    - Could be extremely generic types of documents to extremely specific. Or something in between. Usually represents as a line from left to right, from generic to specific.
    - Foundational Architectures -> Common System Architectures -> Industry Architectures -> Organization-Specific Architectures
        * Foundational Architecture could be applied in almost any company in the world in almost any industry
        * Common System Architectures goes a little bit deeper. Service Oriented Architecture call be an example of Common System Architectures. Not any business can apply SOA, but it's still quite generic.
        * Industry Architectures - architectures and standards with specifics for certain business domains like banking. If you are not in baking you dont need to worry about
        * Organization-Specific Architectures - the most specific architectures, generally you or someone in your team created
* The Architecture Repository
    - it is a place where you store different classes of your architectural output at different levels of abstraction, various artifacts and various deliverables:
        * Architecture Metamodel - describes the organization and relationships between different types of architectural descriptors, artifacts, and building blocks
        * Architecture Capability
        * Architecture Landscape
        * Standards Library (formely Standards Information Base, SIB)
        * Reference Library - any documents which are industry standards or specifications that are outside of the scope of your company but still a part of your references
        * Governance Repository (formely Governance Logs) - any kind of governance. Control measures and control change, control that your plan is followed through.
        * Architecture Requirement Repository (new in 9.2)
        * Solution Landscape (new in 9.2)
    - Central storage for your architecture documents
    - Should support document versioning
    - Should be available for all authorized people
    - Has relationship to Architecture Capability and Governance
of abstraction.
* Architecture Capability
    - It is basically your ability to do Enterprise Architecture. It's possible that you're just getting started down this road, that your enterprise, your organization, really doesn't have a history of doing enterprise architecture. Maybe you just started in this role and there's just no capability currently. That's certainly possible.
    - Ability to create documents, put them into repository, and follow the processes controlled by governance 
    - TOGAF does contain an architecture or capability method inside the standard
    - Requires effort to grow into developing architecture capability
    - So the architecture capability is evaluated in the preliminary phase of the ADM.
    - Capability has relationship to Governance and Architecture Repository.
    - Architecture capability is in some degree based on your ability to get the business to agree on creating an architecture process, going through the ADM and coming out with an enterprise architecture.

## ADM. Architecture Development Method
So to understand the ADM, the ADM is the process by which an enterprise architecture is defined.  
So as you start through the process, you might find yourself again having to gather documents, ask questions,  
interview people, and as you go through it, you're going to end up with an architecture definition,  
a migration plan and finally into implementation and also change management along the way.

**Consist of 10 phases in total**
10 yellow cycles here are phases of the ADM  
![image](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/716f8ac2-27d4-4edd-b1b4-581f0007c5c9)

### ADM Iterative Process example.
<img width="524" alt="image" src="https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/2106b2da-2e61-4791-af75-dd6d47163de4">  

**Main goal is to be flexible, tailored. You can add steps if it's required in your organization**   

* You can go from the preliminary phase to the vision phase and then back to the preliminary phase, back to the vision phase. It's possible.  
* You can do A, B, C, and D, or even all the way to F and then loop back to B.  
* You can flip between E and F multiple times as you're finding the gap analysis and getting into migration  
* Maybe you have security being high on your list of issues and you've got a security team and a security department and a chief security officer. And so you're going to have to adapt the TOGAF, ADM to involve your security department at certain points along the process. And that could just be new steps that are added, new stakeholders, new documents to be written and new certifications to be gained.  
* May be you need to get certain certifications for your product, in this case you can also add additional step in your cycle.
* If one or some of steps that dont apply to you - you can just remove these steps and associated documents. 

**1st phase is "Preliminary"** - first phase. You can return to it anytime if you wish. But generally the preliminary phase is done one time.  
**8 phases from A to H** Then there are eight phases labeled A through H in a cycle called the architecture development cycle.  
**Requirements Management** sitting in the center - is ongoing phase that can happen any time.  

## ADM. 8 Phases from A to H.
### Before start. Initial State
0. When you start your the Architecture Repository is empty (or probably should be pretty empty in the beginning)  
1. Usually when you do ADM for the first time your Architecture Capability (Capability to create Architecture is zero or one, so pretty low capability). It's more as upskilling process
2. It gets easier and the second time you go through it:
   * you have your architecture repository does have documents (from previous runs on this project or in this company).
   * Some of your requirements arent being affected

### Requirements Management & Additional info
1. Phase H could be quite lenghty sometimes because you need to wait for the implementation and then to see if you need to make changes to the requirements. Therefore thereis pauses in this Phase H.
2. Once phase H is completed you are going to start A phase again.
3. Requirements Management - is the concept where at some point something can happen and you can't just say "No, I can't deal with that, I am already on Phase D".
   * Instead you need to deal with this, you should be albe to handle things that happen as they happen.
   * If competitor's product was released you need to deal with this, you nede to go back to the Vision Phase and revise company's vision on business goals.
