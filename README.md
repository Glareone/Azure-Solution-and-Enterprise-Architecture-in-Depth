> Data presented here is gathered from different courses: Stanford University, Carnegie Mellon University, Different Books, Udemy-DesignGuru-Alex Xu-Oreilly courses, etc.  

# Categories of materials
* [Azure Solution Architecture](#-azure-cloud)
* [TOGAF Enterprise Architecture](#-enterprise-architecture-togaf)
* [Solution and System Design examples. High and Low Level Design. Examples. NFR & Trade-offs](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/tree/main/System%20Design%20Interview%20%26%20Architecture%20in%20Practice)
* [Complex Data Structures In Depth](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/tree/main/complex-data-structures-in-depth)
* [ATAM. Architecture Trade-off Analysis Management](#architecture-atam-principles)
* [Architecture. Patterns. General.](#architecture-patterns)
* [Microservices. Patterns. Approaches](/microservices-approaches-patterns/readme.md)

## <img src="https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/ecfa35ae-3001-4600-a9ee-e7158770f945" width="80" height="40" /> AWS Cloud
1. [AWS: Solution Architecture. Theory and in Practice](https://github.com/Glareone/AWS-Certified-Solution-Architect)

## <img src="https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/32dd19a5-8468-4044-937a-158443f49772" width="50" height="40" /> Azure Cloud
1. [Azure: Solution Architecture in Practice](#governance-and-compliance-materials)  
    a. [Azure: Logging & Monitoring](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/blob/main/Logging%2CMonitoring.md)  
    b. [Azure: Service Principal, Managed Identity, and Service Connection](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/blob/main/service%20principals%2Cmanaged%20Identities%2Cvault%20authentication.md)  
    c. [Azure: Data Materials](#data-materials)  
    d. [Azure: Design Relational Data Storage](#design-for-relational-data-storage)  
    e. [Azure: Active Geo-replication](#active-geo-replication)  
    f. [Azure: Networking](#design-networking)  
    g. [Azure: High Availability and Traffic Manager](#high-availability-with-traffic-manager)  
    h. [Azure: Architecture examples by Microsoft](https://learn.microsoft.com/en-us/azure/architecture/browse)  
    i. [Azure Migration Strategy by Microsoft](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWF4QT)  
    g. [Azure Additional Links to Different Materials](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/azure-additional-links-resources.md)  
    k. [Azure: Articles which covers everything in Azure. Third-Party repo I cloned](https://github.com/Glareone/azure-content/tree/master/articles)  
    l. [API Management and VNet + APIM with Gateway for On-Premise](https://learn.microsoft.com/en-us/azure/api-management/api-management-using-with-vnet?tabs=stv2)  
2. [Azure B2B, B2C, Entitlement, Guest Users. App roles & delegated permissions](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/Azure%20AD%20B2B%20Access%20to%20third%20party%20users.md)   
    a. [Azure: B2B & B2C, Azure AD DS Domain Services](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/Azure%20B2B,%20B2C,%20Azure%20AD%20DS.md)  
    b. [Azure Entitlement](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/Entitlement:%20Azure%20AD%20B2B%20Access%20to%20third%20party%20users.md)  
    c. [Azure Delegate Permissions (User to Azure App)](https://learn.microsoft.com/en-us/azure/active-directory/develop/permissions-consent-overview)  
    d. [Azure Assign App roles to another App. Api Permissions](https://learn.microsoft.com/en-us/azure/active-directory/develop/howto-add-app-roles-in-apps#assign-app-roles-to-applications)   
3. [Azure: High Availability. Disaster Recovery for Azure Functions. Strategies](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/blob/main/high-availability-strategies-in-azure.md)  
    a. [Azure Service Bus: Performance Improvements Best Practices](https://github.com/Huachao/azure-content/blob/master/articles/service-bus/service-bus-performance-improvements.md)  
    b. [Azure App Service Disaster Recovery. Active-Active, Active-Passive, Active-Cold](https://learn.microsoft.com/en-us/azure/app-service/overview-disaster-recovery)  
4. [Azure: Skylines Academies materials](#skylines-academy-materials)
5. [Data & Data Storage Materials](#data-materials)  
    a. [Design for Data Storage](#design-for-data-storage)  
    b. [Azure SQL. Data Retention](#data-retention-in-azure-sql-dbs-managed-instance-and-sql-server)  
    c. [Azure SQL DB Data Retention for more than 35 days. Tip](#how-to-manage-situations-when-you-need-data-retention-for-more-than-35-days)  
6. [Traffic Manager](#traffic-manager)
7. [Azure Data Factory](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/blob/main/azure-datafactory.md)  
8. [Azure Proximity Placement Groups. Configuring Low-latency VMs in one DataCenter](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/blob/main/azure-proximity-placement-groups.md)  
9. [Azure App Configuration. Feature Flags and Configurations](https://learn.microsoft.com/en-us/training/modules/implement-azure-app-configuration/4-app-configuration-feature-management)
10. [Azure AI Engineer. AI-102](https://github.com/Glareone/AI-LLM-RAG-best-practices?tab=readme-ov-file#azure-learn-useful-materials)  
    a. [AI Search Advanced Features. Scoring Profiles](https://learn.microsoft.com/en-us/training/modules/implement-advanced-search-features-azure-cognitive-search/?sharingId=8A2C0E47AED1BEB)  
    b. [AI Search. Semantic Ranking](https://learn.microsoft.com/en-us/training/modules/use-semantic-search/3-set-up-semantic-search)  
    c. [Document Intelligence. Composed Models](https://learn.microsoft.com/en-us/training/modules/create-composed-form-recognizer-model/)  
    d. [AI Services In containers](https://learn.microsoft.com/en-us/training/modules/investigate-container-for-use-with-ai-services/)  
    e. [AI Hub Foundry. Host Mistral in Azure](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/models-featured?tabs=mistral-large&pivots=programming-language-python#mistral-ai)  
    f. [LUIS. Conversation Understanding. Inquiries](https://learn.microsoft.com/en-us/training/modules/build-language-understanding-model/2-understand-resources-for-building)    

## <img src="https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/457f5abf-aea3-430a-b3e3-ffda0d7e137a" width="100" height="40" /> Enterprise Architecture. ToGAF

1. [ToGAF. ADM. Basics](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/togaf.md)
2. [ToGAF. Preliminary Phase](togaf/phase-0-preliminary-phase.md)
3. [ToGAF. A. Architecture Vision](togaf/phase-1-a-architecture-vision.md)
4. [ToGAF. B. Business Architecture](togaf/phase-2-b-business-architecture.md)
5. [ToGAF. C. Information Systems Architecture](togaf/phase-3-c-information-systems-architecture.md)
6. [ToGAF. D. Technology Architecture](togaf/phase-4-D-technology-architecture.md)
7. [ToGAF. E. Opportunities and Solutions](/togaf/phase-5-E-opportunities-and-solutions.md)  
8. [ToGAF. F. Migration Planning](togaf/phase-6-F-migration-planning.md)
9. [ToGAF. G. Governance. Table of Content](togaf/phase-7-G-Governance.md)  
  * [Good Principles of Governance](togaf/Architecture-Governance/Arch-Governance-1-Architecture-Governance-Technique.md#togaf-principles-of-good-governance)
  * [Compliant. Non-Compliant. Consistent. Conformant. Fully-Conformant. Irrelevant.](togaf/Architecture-Governance/Arch-Governance-4-Architecture-Compliance.md)  
10. [ToGAF. H. Architecture Change Management](togaf/phase-8-H-architecture-change-management.md)
11. [ADM. Guidelines and Techniques. Table of Content](togaf/ADM-Guidelines-and-Techiniques.md)
12. [Architecture Governance Techniques. Table of Content](togaf/Architecture-Governance-Techniques.md)

## Architecture. ATAM. Principles
<img src="https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/63963821-df71-4f71-9423-d9fa3dc4d7ad" width="300" height="300" />

1. [Architecture: How Much of Architecture is needed](#how-much-of-architecture-is-needed)  
    a. [Architecture lifecycle](#architecture-patterns)  
    b. [Architecture patterns](#architecture-patterns)  
    c. [Architecture style vs pattern](#architecture-style-vs-pattern)  
    d. [Architecture Influence Cycle](#architecture-influence-cycle)  
2. [Architecture: Jeffrey Richter's Course materials](#jeffrey-richters-course-slides)
3. [Architecture: Attribute-Driven Design](#attribute-driven-design-add)
4. [Architecture: Quality Attributes and Tactics to achieve them](#quality-attributes-tactics-to-achieve-quality-attributes)  
    a. [Functional vs Non-Functional. Test Process](#functional-vs-non-func-attributes-testing-process)  
    b. [Tactics to Achieve Quality Attributes](#tactics-to-achieve-quality-attributes)  
5. [Architecture: Architecture Style](#architecture-styles-and-their-documentation-module-styles-cc-styles-allocation-styles)  
    a. [Module Styles](#module-styles-general-information)  
    b. [Component & Connectors Styles](#components-and-connectors-styles)  
    c. [Allocation Styles](#allocation-styles)  
6. [Architecture Views. Documenting Software Architecture. Properties to document in your Architecture Document](#architecture-views-documenting-software-architecture-properties-to-document-in-your-architecture-document)    
7. [Documenting Architecture. General Structure. General Principles. Mapping Requirements](#documenting-architecture-general-structure-general-principles-mapping-requirements)   
    a. [Documenting: Combining Views. Hybrid View](#combine-views-hydrid-view)  
    b. [Documenting: Interfaces, Behavior, Context](#documenting-interfaces-behavior-context)  
    c. [View Packets. Alternatives](#view-packets-alternatives-how-to-build-and-document)  
    d. [Example: Architecture Decision Records (ADR\MADR). How to Document your architecture decisions and their consequences](https://github.com/Glareone/good-example-of-architecture-decision-records/tree/develop/doc/architecture/decisions)  
8. [Views and Beyond. Alternatives: DoDAF, ISO42010 \ IEEE1471-2000](#views-and-beyond-alternatives-iso-42010-isoiec-42010-dodaf-documentation-in-agile)
9. [Reviewing Architecture Documentation](#reviewing-architecture-documentation-6-steps-active-reviewing)
10. [Architecture Evaluation](#architecture-evaluation-measure-and-output-atam)

## General Architecture Principles. Data. Caching. Messaging. Distributed Systems
1. [Data & Data Storage Materials](#data-materials)  
    a. [Data Replication. Leader-Follower & Quorum patterns in SQL](#azure-sql-data-replication-types-and-strategies-quorum-and-leader-follower-patterns-pros--cons)   
    b. [Blob Storage vs File Share vs Managed Disks](#design-for-storage-accounts-file-share-managed-disks-used-by-azure-vms-blob-storage)  
2. [Cache. Read-Through, Cache-Aside](#cache)  
    a. [Cache Consistency Models](#cache-consistency-models)  
    b. [Cache Challenges](#cache-challenges)  
    c. [Cache Replacement Policies](#cache-replacement-policies)  
    d. [Cache Performance Metrics](#cache-replacement-policies)
3. [Governance and Compliance materials](#governance-and-compliance-materials)  
4. [Kafka & Messaging patterns](#messaging-systems-messaging-patterns-kafka)  
    a. [Kafka. Basics. Consumer Group. Compression & Batching. Load Balancing](#kafka-kafka-basics-kafka-cluster)  
    b. [Messaging Patterns suitable for Kafka and for other services. Q&A](#patterns-with-kafka-and-other-services-qa)  
5. [Darp. The Distributed Application Runtime](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/Darp.md)  
6. [CAP Theorem. PACELC](#cap-themorem-pacelc-theorem-examples)
7. [Consistent Hashing for Data Replication and Data Partitioning](#consistent-hashing-data-partitioning-data-replication)

## Architecture in Practice. System Design Interview Questions. Main Problems
1. [Architecture in Practice. System Design Interview. Q&A. Main Problems](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/tree/main/System%20Design%20Interview%20%26%20Architecture%20in%20Practice)  
    a. [System Design Interview In practice](#practice-in-system-design-interview-examples)  
    b. [URL Shortener](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/System%20Design%20Interview%20%26%20Architecture%20in%20Practice/Url%20Shortener.md)   
    c. [Pastebin](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/System%20Design%20Interview%20%26%20Architecture%20in%20Practice/Pastebin%20in%20practice.md)  
    d. [Web Crawler](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/blob/main/System%20Design%20Interview%20%26%20Architecture%20in%20Practice/Web%20Crawler.md)  
    e. [Web Chat](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/System%20Design%20Interview%20%26%20Architecture%20in%20Practice/chat.md)  
    f. [Typeahead. Trie. Autocomplete](/System%20Design%20Interview%20&%20Architecture%20in%20Practice/TypeAhead_Trie_Autocomplete.md)  
    g. [Youtube. Hulu. Netflix](/System%20Design%20Interview%20%26%20Architecture%20in%20Practice/Youtube-Netflix-Hulu.md)  
     
3. [CAP Theorem. PACELC](#cap-themorem-pacelc-theorem-examples)
4. [Consistent Hashing for Data Replication and Data Partitioning](#consistent-hashing-data-partitioning-data-replication)


## System Design Interview. Low-Level System Design Interview. High-Level System Design Interview
Table of Contents  
1. [System Design Interview. Low-Level SDI, High-level SDI](#system-design-interview-low-level-system-design-interview-high-level-system-design-interview)  
2. [Step-by-step guide by DesignGurus](#system-design-interview-general-rules-step-by-step-guide)  

## Other Good Articles & Must Read Books
1. [System Design Complete Guide by Karan Pratap Singh](https://dev.to/karanpratapsingh/system-design-the-complete-course-10fo)
2. [Designing Data-Intensive Applications, M.Kleppmann](https://www.amazon.com/Designing-Data-Intensive-Applications-Reliable-Maintainable/dp/1449373321)
3. [System Design Interview, Alex Xu](https://www.amazon.com/System-Design-Interview-insiders-Second/dp/B08CMF2CQF/?_encoding=UTF8&pd_rd_w=dSR9B&content-id=amzn1.sym.cf86ec3a-68a6-43e9-8115-04171136930a&pf_rd_p=cf86ec3a-68a6-43e9-8115-04171136930a&pf_rd_r=141-9978081-1899260&pd_rd_wg=JfweX&pd_rd_r=30cd8cba-7060-488f-8f0c-035712be0551&ref_=aufs_ap_sc_dsk)  
    
# How Much of Architecture is needed?

![image](https://user-images.githubusercontent.com/4239376/220193660-847a6bc1-be2d-4027-ae57-ca5e1d157c33.png)

# Architecture lifecycle
## QAW (workshop) => ADD (Attribute-Driven Design) => V&B (Views and Beyond) => ATAM (Architecture Tradeoffs Analysis)
![image](https://user-images.githubusercontent.com/4239376/220447398-072fc142-a2a0-4986-85dc-a44f061c69ab.png)


# Architecture patterns

![image](https://user-images.githubusercontent.com/4239376/193664508-ce5aebaf-4212-4473-a924-def6d0d00620.png)

# Architecture style vs pattern

![image](https://user-images.githubusercontent.com/4239376/221378280-11755114-81b2-4bc8-8542-ff368b353e50.png)
* Pattern consists of 3 parts - Problem, Context, and Solution.     
* Patterns tells more about context in which Solution appeared.  
On the other hand style is about Solution, it well describes what exactly was selected, without detailed explanation "why". (Leonard Bass)
* Style is higher level of abstraction, style can demonstrate elements and their relations
* Pattern shows exact way of "how to achieve that using exact way". Details: https://www.geeksforgeeks.org/difference-between-architectural-style-architectural-patterns-and-design-patterns/

# Architecture Influence Cycle

![image](https://user-images.githubusercontent.com/4239376/216790069-a05f07e9-1130-44b3-8103-cc35a8e9e5e6.png)

# Architecture Materials. General Materials

## Materials
* DDD, Hexagonal, Onion, Clean, CQRS: https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/  
* Anemic model (Fowler): https://martinfowler.com/bliki/AnemicDomainModel.html
* Anemic model vs Full Domain Model (Fowler): https://martinfowler.com/bliki/AnemicDomainModel.html

## Jeffrey Richter's Course. Slides
[?aaS Cloud course from Jeffrey Richter](https://www.youtube.com/watch?v=LkJr0Ld85AE&list=PL9XzOCngAkqs0Q8ZRdafnSYExKQurZrBY&index=4)   
[Jeffry Richter Presentation, Why cloud apps, Embracing Failures, Orchestrators, Virtualization.pptx](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/8095517/Jeffrey.Richter.Part1.pptx)  
[Jeffrey Richter Presentation, Regions and Microservices.pptx](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/8173857/Jeffrey.Richter.Part2.pptx)  
[Jeffrey Richter, Scaling, 12-Factor, Containers.pptx](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/8193156/Jeffrey.Richter.Part3.pptx)  
[Jeffrey Richter, Docker, Hyper-V containers, Containerd runtime, CI and CD.pptx](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/8205732/Jeffrey.Richter.Part.4.pptx)  
[Jeffrey Richter, API Versioning, Troubleshooting, Steps towards Microservices(what need to take into account).pptx](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/8446143/Jeffrey.Richter.Part.5.pptx)  
[Jeffrey Richter, Idempotency, Retry Policy, Exactly Once Strategy.pptx](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/8492428/Richter.s.Club.Part.6.pptx)

<details>
<summary>8 Fallacies of Distributed Computing Explained</summary>
  
  [8_Fallacies_of_Distributed_Computing_Explained.pdf](https://arnon.me/wp-content/uploads/Files/fallacies.pdf)  
  
  ![image](https://user-images.githubusercontent.com/4239376/160911869-107d5917-fbaa-4a1f-87c9-9c30d953b607.png)
</details>

<details>
<summary>4 Reasons to split monolith onto microservices. Richter's slide</summary>

![4 reasons to split the monolith onto microservices](https://user-images.githubusercontent.com/4239376/156473112-b224feef-fec9-4184-8d58-b5a40ee6005a.png)
</details>

<details>
<summary>twelve factor application (12 factor explained)</summary>

[The twelve factor application (12-factor)](https://12factor.net/)  
</details>

<details>
<summary>Forward & Reverse Proxies</summary>

  When people talk about proxy they usually mean forward proxy.  
  Forward proxy - kind of proxy when you have a several services which reach one resource in the internet. And you may create a service which adds some information (headers) to such request and\or transform them somehow before forwarding (change the address of destination).  
  Good forward proxy example: Fiddler;  
    
    
  Good reverse proxy examples: Nginx, IIS, API Gateway, Load Balancer, etc.  
You may need them for:    
  1. Manage calls coming to your services (Being a facade of your services)
  2. Check whether coming calls which have basic authentication - are able to interact with the service
  3. Load Balancing (on OSI level4 for TCP and UDP traffic and for OSI level7 for HTTP\HTTPS traffic)
  4. SSL termination - request coming to reverse proxy (Nginx for example) may be HTTPS, but forwarded request will be http
  5. Caching mechanisms
  6. Throttling - to control the input, e.g. amount of requests per seconds 
  7. Billing - to control the amount of requests and to help making a bill for them  
  8. DDos mitigation  
  9. Retry Policy. It may automatically make a retry to another service instance behind it if the certain one is unreachable    
![image](https://user-images.githubusercontent.com/4239376/160917251-4cdcd9b5-f2cb-449f-89b3-38ce42d11def.png)  
  
  Reverse proxy example. RP-I is Reverse proxy and it plays a load balancer role here.  

> **_NOTE:_** It's impossible to keep endpoints in sync as service instances come or go. Client code must be robust against this  

![image](https://user-images.githubusercontent.com/4239376/160920117-1ac1ab2b-7131-40b8-a56e-79c9314e98d9.png)  

  Another example of reverse proxy with load balancer + healthcheck role  
![image](https://user-images.githubusercontent.com/4239376/160923562-490c43b1-efe8-4ea0-86e0-ce2b47b49f90.png)

</details>

# Carnegie Mellon University
Link to the [Carnegie Mellon University Course](https://insights.sei.cmu.edu/library/software-architecture-in-practice-third-edition/)
## Attribute-Driven Design (ADD)
<details>
<summary>Attribute-Driven Design in details</summary>

![image](https://user-images.githubusercontent.com/4239376/219737318-33fdf14c-4016-4b84-aa1f-1fd1d98d69fa.png)
![image](https://user-images.githubusercontent.com/4239376/219737873-0937a52a-1cff-45d6-9f9e-7641bc8a0812.png)
![image](https://user-images.githubusercontent.com/4239376/219737976-69233f3c-1892-485c-a3f8-b0622fbdb769.png)
![image](https://user-images.githubusercontent.com/4239376/219738102-f4737655-fa84-449b-9e7f-c004eaf815b3.png)
![image](https://user-images.githubusercontent.com/4239376/219738215-f930b053-57e1-4c80-b4a2-8137cafb60e8.png)
![image](https://user-images.githubusercontent.com/4239376/219738320-b984478d-3469-4b6d-ad35-6ac1638b58d4.png)
</details>

## Quality Attributes. Tactics to achieve Quality Attributes.
### Functional vs Non-Func Attributes. Testing Process
<details>
<summary>Functional vs Non-Functional attributes. Non-Functional Testing Process. Testing Cycle</summary>

![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/df9d790b-86af-4c49-b1fc-8f364d397855)  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/889565e0-5c88-4f49-b2fd-66c01926e36f)   
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/7dedfb1d-d51b-4bb7-aa95-d174eaffca96)  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/12f06fae-8a8b-4c28-86bb-71525e00df32)  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/06109941-43a1-40f1-b711-8a0e0175f9e3)  

</details>

<details>
<summary>Quality attributes. How better bescribe them. Concrete examples.</summary>

Instead of just saying that performance is important for you - you need to create scenarios.  
Each scenario should have 6 points starting from **what's happening**, **from where this stimulus comes**, **in which circumstances**, and until **how to react**
![image](https://user-images.githubusercontent.com/4239376/216836571-6a032251-b01c-4c98-8d17-37be0e318ef2.png)

![image](https://user-images.githubusercontent.com/4239376/216837073-309a98a0-1646-427e-a5dd-459d5a9d56ac.png)
  
![image](https://user-images.githubusercontent.com/4239376/216837142-53749ba5-7047-407d-9552-2113b9ea93de.png)

# Scenario for Availability. First slide - all spectre what's covered. The second and third - what we exactly handle and what we expect
![image](https://user-images.githubusercontent.com/4239376/216837612-503affeb-d665-4e16-8c5b-61c0c3ccba99.png)
![image](https://user-images.githubusercontent.com/4239376/216837663-e859d2d2-2b06-4fe9-aba5-2af9381015c2.png)
![image](https://user-images.githubusercontent.com/4239376/216837739-a9fd6d0e-6640-4764-b49c-65e0869e08f0.png)
</details>

### Tactics to achieve Quality Attributes

<details>
<summary>Tactics: Availability. 3 types: fault detection, fault recovery, fault prevention</summary>

![image](https://user-images.githubusercontent.com/4239376/227729293-3e0b5411-fd51-4879-b2e6-f8fcdaaaa444.png)

![image](https://user-images.githubusercontent.com/4239376/219443466-cafefd3a-c0e4-4b13-a899-85c3fefedbe3.png)

* as example: for Availability you need to care about
  - Passive redundancy - copy your data\state to extra instances and make hot replacement when needed
  - Condition Monitoring - control when failure occured in your instance and react on this event - restart instance, isolate, etc.

# Example of Tactics. Detect Faults
![image](https://user-images.githubusercontent.com/4239376/219454833-6dcd413d-4c1c-431e-a486-ae217ae1e25b.png)
![image](https://user-images.githubusercontent.com/4239376/219454878-86e76828-e622-45a5-8a70-fee5a637df05.png)

* Voting is used in airplanes where several processes make same calculations in parallel and majority wins. 
  - Usually system element as Monitor is looking at the output of each process. If one of processes shows wrong results - it's deemed to be faulty. 

## Recovery from Faults
![image](https://user-images.githubusercontent.com/4239376/219455672-4168787e-0661-4fb9-a8a0-09d82a73a32d.png)
![image](https://user-images.githubusercontent.com/4239376/219457315-12f9a0ce-23e0-43ca-880b-545e6f7955f0.png)
![image](https://user-images.githubusercontent.com/4239376/219457198-9453516c-c94b-4f78-b674-36ee65cafc5f.png)

## Prevent Faults
![image](https://user-images.githubusercontent.com/4239376/219458116-d4b56387-3cea-45b1-a12e-261c91b38ab3.png)
</details>

<details>
<summary>Tactics: Performance</summary>
  
  ![image](https://user-images.githubusercontent.com/4239376/227730740-5974fe2d-dd15-4930-ae10-da9668ea350b.png)

  ![image](https://user-images.githubusercontent.com/4239376/219783403-b62a5757-2dce-4a24-b6d8-8efa13f0f5f6.png)
    
  ### Control Resource Demand  
One way to increase performance is to carefully manage the demand for resources. This can be done by reducing the number of events processed or by limiting the rate at which the system responds to events. In addition, a number of techniques can be applied to ensure that the resources that you do have are applied judiciously
  * Manage work requests.  
  One way to reduce work is to reduce the number of requests coming into the system to do work. Ways to do that include the following:
  * Manage event arrival.   
  A common way to manage event arrivals from an external system is to put in place a service level agreement (SLA) that specifies the maximum event arrival rate that you are willing to support
  * Manage sampling rate.  
  In cases where the system cannot maintain adequate response levels, you can reduce the sampling frequency of the stimuli—for example, the rate at which data is received from a sensor or the number of video frames per second that you process. Of course, the price paid here is the fidelity of the video stream or the information you gather from the sensor data. Nevertheless, this is a viable strategy if the result is “good enough.”
  * Limit event response.  
  When discrete events arrive at the system (or component) too rapidly to be processed, then the events must be queued until they can be processed, or they are simply discarded. You may choose to process events only up to a set maximum rate, thereby ensuring predictable processing for the events that are actually processed.

  ### Reduce computational overhead
  * Reduce indirection.  
  The use of intermediaries (so important for modifiability, as we saw in Chapter 8) increases the computational overhead in processing an event stream, so removing them improves latency. This is a classic modifiability/performance tradeoff. Separation of concerns—another linchpin of modifiability—can also increase the processing overhead necessary to service an event if it leads to an event being serviced by a chain of components rather than a single component
  * Co-locate communicating resources.  
  Context switching and intercomponent communication costs add up, especially when the components are on different nodes on a network. One strategy for reducing computational overhead is to co-locate resources.z
  * Periodic cleaning.  
  A special case when reducing computational overhead is to perform a periodic cleanup of resources that have become inefficient. For example, hash tables and virtual memory maps may require recalculation and reinitialization.  
  * Increase efficiency of resource usage.  
  Improving the efficiency of algorithms used in critical areas can decrease latency and improve throughput and resource consumption.
  
  ### Manage Resources  
  Even if the demand for resources is not controllable, the management of these resources can be. Sometimes one resource can be traded for another.
  * Increase resources. Faster processors, additional processors, additional memory
  * Introduce concurrency. If requests can be processed in parallel, the blocked time can be reduced
  * Maintain multiple copies of computations. This tactic reduces the contention that would occur if all requests for service were allocated to a single instance.
  * Maintain multiple copies of data. Two common examples of maintaining multiple copies of data are data replication and caching.
  * Bound queue sizes. This tactic controls the maximum number of queued arrivals and consequently the resources used to process the arrivals.
  * Schedule resources. Whenever contention for a resource occurs, the resource must be scheduled. Processors are scheduled, buffers are scheduled, and networks are scheduled
    
  ## Patterns
  * Service Mesh   
The service mesh pattern is used in microservice architectures. The main feature of the mesh is a sidecar—a kind of proxy that accompanies each microservice, and which provides broadly useful capabilities to address application-independent concerns such as interservice communications, monitoring, and security. A sidecar executes alongside each microservice and handles all interservice communication and coordination.
  ![image](https://user-images.githubusercontent.com/4239376/227731599-8a717965-40c1-45f7-a604-5c4ef6eee536.png)

  * Load Balancer  
A load balancer is a kind of intermediary that handles messages originating from some set of clients and determines which instance of a service should respond to those messages. The key to this pattern is that the load balancer serves as a single point of contact for incoming messages—for example, a single IP address
  ![image](https://user-images.githubusercontent.com/4239376/227731638-a91641e8-2351-49b4-8a2b-c2c1786f516a.png)
  
  * Throttling  
The throttling pattern is a packaging of the manage work requests tactic. It is used to limit access to some important resource or service. In this pattern, there is typically an intermediary—a throttler—that monitors (requests to) the service and determines whether an incoming request can be serviced.
  ![image](https://user-images.githubusercontent.com/4239376/227731675-cbfc412c-65a5-4eff-b9c2-a5369cc6359d.png)

  * Map-Reduce
The map-reduce pattern efficiently performs a distributed and parallel sort of a large data set and provides a simple means for the programmer to specify the analysis to be done. Unlike our other patterns for performance, which are independent of any application, the map-reduce pattern is specifically designed to bring high performance to a specific kind of recurring problem: sort and analyze a large data set. This problem is experienced by any organization dealing with massive data
    ![image](https://user-images.githubusercontent.com/4239376/227731872-486833fe-3f19-4de3-8dff-d4d30ab746a2.png)

</details>
  

<details>
<summary>Tactics: Deployability. Patterns</summary>
  
  * Sample of Deployability scenario  
  ![image](https://user-images.githubusercontent.com/4239376/227729937-d6ebe2d9-bbc6-44f8-95bd-bf3c607f2b89.png)
    
  * Tactics  
  ![image](https://user-images.githubusercontent.com/4239376/227729969-fc5c9b33-75a2-4f2c-a445-8048e5b95caa.png)

  ### Manage Deployment Pipeline
    
  #### Scale rollouts. 
  Rather than deploying to the entire user base, scaled rollouts deploy a new version of a service gradually, to controlled subsets of the user population, often with no explicit notification to those users. (The remainder of the user base continues to use the previous version of the service.) By gradually releasing, the effects of new deployments can be monitored and measured and, if necessary, rolled back. This tactic minimizes the potential negative impact of deploying a flawed service. It requires an architectural mechanism (not part of the service being deployed) to route a request from a user to either the new or old service, depending on that user’s identity.
  #### Roll back. 
  If it is discovered that a deployment has defects or does not meet user expectations, then it can be “rolled back” to its prior state. Since deployments may involve multiple coordinated updates of multiple services and their data, the rollback mechanism must be able to keep track of all of these, or must be able to reverse the consequences of any update made by a deployment, ideally in a fully automated fashion.
  #### Script deployment commands. 
  Deployments are often complex and require many steps to be carried out and orchestrated precisely. For this reason, deployment is often scripted. These deployment scripts should be treated like code—documented, reviewed, tested, and version controlled. A scripting engine executes the deployment script automatically, saving time and minimizing opportunities for human error.

  ### Manage Deployed System
  #### Manage service interactions. 
  This tactic accommodates simultaneous deployment and execution of multiple versions of system services. Multiple requests from a client could be directed to either version in any sequence. Having multiple versions of the same service in operation, however, may introduce version incompatibilities. In such cases, the interactions between services need to be mediated so that version incompatibilities are proactively avoided. This tactic is a resource management strategy, obviating the need to completely replicate the resources so as to separately deploy the old and new versions.

  #### Package dependencies. 
  This tactic packages an element together with its dependencies so that they get deployed together and so that the versions of the dependencies are consistent as the element moves from development into production. The dependencies may include libraries, OS versions, and utility containers (e.g., sidecar, service mesh), which we will discuss in Chapter 9. Three means of packaging dependencies are using containers, pods, or virtual machines; these are discussed in more detail in Chapter 16.

  #### Feature toggle. 
  Even when your code is fully tested, you might encounter issues after deploying new features. For that reason, it is convenient to be able to integrate a “kill switch” (or feature toggle) for new features. The kill switch automatically disables a feature in your system at runtime, without forcing you to initiate a new deployment. This provides the ability to control deployed features without the cost and risk of actually redeploying services.
    
  ## Patterns for Deployability
  
    ### Code organization point of view
  ![image](https://user-images.githubusercontent.com/4239376/227730258-36d7a5f2-4c6e-4567-9843-91ca32a96e4d.png)
    
  * Benefits
  ![image](https://user-images.githubusercontent.com/4239376/227730351-59581768-62e5-4b45-8f3f-8cebd0e1a068.png)
  * Tradeoffs
  ![image](https://user-images.githubusercontent.com/4239376/227730367-5149895c-c0a0-4fb3-8780-8e7332e08874.png)
  
    ### Deployment changes point of view
  ![image](https://user-images.githubusercontent.com/4239376/227730474-a1077689-833c-4cc4-906e-7af8e4da38cd.png)
  * Benefits and Tradeoffs
  ![image](https://user-images.githubusercontent.com/4239376/227730555-5c1a8fb4-a255-45aa-80bc-55725df528c4.png)


    
</details>

<details>
<summary>Quality Attribute Utility Tree. Example</summary>

![image](https://user-images.githubusercontent.com/4239376/219745438-b23a5a65-1658-4d88-a7c8-b94564fd151d.png)
</details>

## Architecture Styles and their Documentation. Module Styles, C&C Styles, Allocation Styles.
### Module Styles. General Information
![image](https://user-images.githubusercontent.com/4239376/222542413-c1f8c442-b7f1-474f-b99f-733206e61a20.png)

<details>
<summary>Module Styles: Decomposition, Uses, Generalization, Layered, Data Model, Aspects styles</summary>

Module styles are closer to code.
Used for: 
  - code construction, 
  - analysis (impact of changes, planning, or for budgeting concerns).
  - education (onboarding new team-members).  
  - Build vs Buy. You can use Decomposition in order to understand what is better for you - build on your own or buy this product from 3rd party vendor.
  
  
**Module Styles:**
  - Decomposition Style
  - Uses Style
  - Generalization Style
  - Layered Style
  - Data Model Style
  - Aspects Style
  
  ![image](https://user-images.githubusercontent.com/4239376/221414618-4dabdf97-d94c-4c52-b2d4-e3b2228df14c.png)
  ![image](https://user-images.githubusercontent.com/4239376/221414764-645dc4a1-df4d-4b6d-8350-013e6ea4181d.png)

## Notations and Usage. Informal or semi-formal notation: Box and Lines or UML
  ![image](https://user-images.githubusercontent.com/4239376/221415139-34a69a26-2c1f-4a76-8971-e87a8e63cb25.png)  
</details>

### Module Styles in details.
<details>
<summary>Module Styles: Decomposition Style. Decomposition Refinement</summary>

  ## Decomposition Style. Notations
  ![image](https://user-images.githubusercontent.com/4239376/221415293-65b42494-f3a5-419c-a736-23ff09066f3d.png)
  ![image](https://user-images.githubusercontent.com/4239376/221415534-c3f6a92c-ce24-4fcd-a6b1-7d1f1b34d9aa.png)
  
  ## Decomposition Refinement
  * Need to understand if inner structure is needed
  ![image](https://user-images.githubusercontent.com/4239376/222927910-23eaac9e-f2c8-4425-ae3c-2650176d8428.png)
  
  ## Decomposition refinement in UML
  ![image](https://user-images.githubusercontent.com/4239376/222927980-c104e55d-0a45-4759-9313-03114a3d1b51.png)
</details>

<details>
<summary>Module Styles: Uses Style</summary>
  
* Useful for planning an incremental development when you have several dependencies and you need to know where all of them will be available for you;
* Useful in debugging and testing because you can stub and mock your dependencies, or you want to isolate from where the issue comes;
* Useful to validate dependencies and avoid circular dependencies which not letting you make incremental deployment and delivery
* Tracing changes when you want to guarantee that other dependencies will not suffer
  
![image](https://user-images.githubusercontent.com/4239376/221415843-84a4554b-894a-44f4-9de3-b1fe1c7206d2.png)
  
  ## Example:
  ![image](https://user-images.githubusercontent.com/4239376/221416972-cc11bf0c-903d-4758-8605-b1eb95f4c047.png)
  ![image](https://user-images.githubusercontent.com/4239376/221416956-ddebcf5f-5170-463a-a2f8-189b3378dd5c.png)

</details>

<details>
<summary>Module Styles: Generalization Style</summary>

 * Useful for code analyzing
 * Useful for Architecture Representation Creation.
 * Useful for Application Skeleton creation 
  ![image](https://user-images.githubusercontent.com/4239376/221417418-e5997c27-d6bb-41d3-adc4-0fe462d522d9.png)
  ![image](https://user-images.githubusercontent.com/4239376/221417477-d5baedf8-cb7f-41e0-952d-7991bc1dc9db.png)
  
  ## Example:
  ![image](https://user-images.githubusercontent.com/4239376/221417678-a1ec8823-a725-47e2-af3a-5d958ae12a95.png)

</details>

<details>
<summary>Module Styles: Layered Style</summary>

  * Useful for Modificability
  ![image](https://user-images.githubusercontent.com/4239376/221652956-da0ab18a-672f-4e11-a6bd-7b62115c81aa.png)
  ![image](https://user-images.githubusercontent.com/4239376/221652909-e1f4324d-143a-4bd2-aec3-294e9ba5c867.png)
  ![image](https://user-images.githubusercontent.com/4239376/221653213-e59c2425-6b38-4a62-83aa-d8e8a5250432.png)

  * Concentric diagram could not be equivalent to stack diagram because there is ambiguity and it's not clear if B1-B2-B3 can use each other (especially B1-B3 because   they touch each other).

  ## Informal notation in Layered style
  ![image](https://user-images.githubusercontent.com/4239376/221653857-172df0ed-b447-47e6-9a56-b4f257ea9095.png)
</details>

<details>
<summary>Module Styles: Aspects Style (Also known as Multi-dimentional separation of concerns)</summary>

  * Style to depict relations between classes or set of classes (their aspect modules)
  * Could be used to understand the strategy for error handling. When Set of modules want to use one protocol (handling policy) for handling error if it occurs.
  * Could be useful for application decomposition
  * Could be useful to understand the scalability of solution
  ![image](https://user-images.githubusercontent.com/4239376/221654756-b8756777-471d-46d7-a87b-02d5c3a0eef8.png)
  ![image](https://user-images.githubusercontent.com/4239376/221655253-cdee236e-f696-45f6-8db3-72a27f40a4a8.png)

## Example
  * Colored bar represents the aspect in module
  * Could be used only when code is already exist
  ![image](https://user-images.githubusercontent.com/4239376/221655911-aef2229c-c6bc-4cf8-8842-1eaac8c471d3.png)
  * To understand the scalability the best strategy is to create UML Class diagram
  ![image](https://user-images.githubusercontent.com/4239376/221656264-e4574a8b-9f51-4cc9-b7dd-95fb922b92c5.png)
  * For very large apps you need to use non-graphical diagram because in very large apps with dozens of classes and their aspects your UML diagram will be a hell
  ![image](https://user-images.githubusercontent.com/4239376/221656726-ecb021a7-d1ac-46b7-91f0-a14f2a2e3466.png)

## Good example of diagram which uses UML without crosscut arrows
  * Instead of crosscut arrows all aspects are bundled into the package
  * Annotation is attached to each aspect
  ![image](https://user-images.githubusercontent.com/4239376/221657134-db818990-aa9b-404f-a8be-11f7d46240a9.png)
</details>

<details>
<summary>Module Styles: Data Model Style. ERD & UML Notation</summary>
  
  * Useful to depict Data Entities and relations between them
  * Useful for impact analysis
  * Helps to implement modules which have access to the data
  * Useful in Domain Analysis
  * Useful for performance optimizations
  ![image](https://user-images.githubusercontent.com/4239376/221658549-1e3ab4c3-b782-47f7-bae9-2e1a28b7235a.png)
  ![image](https://user-images.githubusercontent.com/4239376/221658815-403a3442-9704-4f5c-8ba8-8a3c67a6c534.png)
  
## Example
  ![image](https://user-images.githubusercontent.com/4239376/221659107-29e5e581-af26-451d-a357-bda74553fb8b.png)
  * In ERD Notation
  ![image](https://user-images.githubusercontent.com/4239376/221659278-3eea7d6e-74f5-44cc-bb8e-104c3d926ee8.png)
  * The same diagram in UML Notation
  ![image](https://user-images.githubusercontent.com/4239376/221659365-a077448e-cc9a-4e37-bd3f-e23eb815f3e4.png)
  
## Data Model Evolution over time
  ![image](https://user-images.githubusercontent.com/4239376/221659918-5f4de157-f47e-4c65-a60f-7daf39678ba8.png)
</details>

## Components and Connectors Styles

<details>
<summary>Component and Connector Styles: Pipe and Filter, Client-Server, Service-Oriented (SOA), Publish-Subscribe, Shared-Data styles</summary>

  Used for: 
  - Performance, Security, Availability (Runtime attributes) analysis
  - Education
  - Construction. C&C Style could describe behavior that elements must demonstrate when they work together
  - Could help to describe how very specific part of the system works
  
  **Components and Connectors style:**
  - Pipe-and-filter Style
  - Client-Server Style
  - Service-Oriented Style
  - Publish-Subscribe Style
  - Shared-Data Style
  - Repository Style
  - Others
  
  ![image](https://user-images.githubusercontent.com/4239376/221666963-84141b64-a2ec-4c43-867b-818b47d44046.png)
  * DataFlow, Call-Return, Event-Based, Repository are Sub-families of C&C Styles

  ** Rules of C&C Style:**
  * In C&C style Component could be a runtime of interaction or Data Store. Component has ports to the outside world;
  * Connector connects components. Connector has roles which could be called;
  * Ports and Roles are just special interfaces of Components and Connectors respectively;
  * The Only one relation between elements -  Attachment; It describes Attachment between Components and Connectors
  * In Architecture Connector is not just a procedure call, but could be very sophisticated computation;
  * C&C Diagram could have Quality attributes which help with analysis;
  * For different Quality Attributes could be useful different C&C Styles
##

  
![image](https://user-images.githubusercontent.com/4239376/221663449-adbd158e-1a6e-4d68-865a-c42d62d13fdb.png)
</details>

<details>
<summary>C&C Style: Pipe and Filter. Pipes and Filters in UML. Yahoo! Pipes</summary>
  
  * Good for cases when data is transformed serially
  * Series of Filters or Series of Pipes one after another is prohibited by Style
  * Good for Functional composition Data Analysis (what the output could be knowing the function and input)
  ![image](https://user-images.githubusercontent.com/4239376/221673213-b2fe6651-b132-46e8-be2d-b8c2573472e3.png)

  ## In UML
  * Dependency arrow is not recommended to use, but it's possible. Better to use straight line as connector
  ![image](https://user-images.githubusercontent.com/4239376/221676884-f1a36c06-86e7-4527-a048-8719d7699443.png)
  
  ## Yahoo! pipes. 
  * Introduced by Yahoo.
  * 7 Filters and Blue Pipes from top to bottom. On the right there are support modules for mainline "components"(in Yahoo terminology).
  ![image](https://user-images.githubusercontent.com/4239376/221677752-d500d433-b308-47fa-bbb3-7c8b00a77e34.png)

</details>

<details>
<summary>C&C Style: Client-Server</summary>

  * Useful for performance, availability, dependability, security analysis
  * Useful when you need to depict amount of clients at the same time
  * Useful when you need to create a strategy "what to do if one server becomes compromised"
  ![image](https://user-images.githubusercontent.com/4239376/221964686-3d093474-6e14-4c63-955a-3089f0f52890.png)
  ![image](https://user-images.githubusercontent.com/4239376/221965154-25e22081-de05-4216-a4be-ca9af922e32d.png)

## Example
  ![image](https://user-images.githubusercontent.com/4239376/221965783-dd5a1c4d-4998-4c3a-a2ba-f381b48dfd06.png)


</details>

<details>
<summary>C&C Style: Service-Oriented (SOA). Web Services</summary>
  
  * Useful for property analysis which could be associated with service or with service client;
  * Services could be not discoverable and not dynamically bound
  ![image](https://user-images.githubusercontent.com/4239376/221966350-9b8c10ed-4c70-486d-aed3-1bdc53f1a580.png)
  * ESB - Enterprise Service Bus, special component which takes routing of messages
  ![image](https://user-images.githubusercontent.com/4239376/221967351-d75aaaad-394f-4c0f-bc10-89b04cf9d505.png)
  
  **Use cases:**
    - services made by different languages, for different platforms, or by different teams\organizations
    - services which have different styles
    - helps with integration of external components
    - for repackaging legacy systems. you can rehabilitate pieces of legacy system one by one

  ## Web Services
  * Web Services is not a synonym of SOA: SOA is architecture style but Web Services is one of many technologies you may choose to implement SOA
  * Micro-service Architecture, WebServices, Micro-Macro Service Architecture, COBRA - are part of SOA Style
  ![image](https://user-images.githubusercontent.com/4239376/221968481-47ca56dd-0cbf-4093-92c8-9ed53ff81314.png)

  ## SOA In practice
  ![image](https://user-images.githubusercontent.com/4239376/221968912-d4f7947b-37b5-43b9-8898-12e7ff12c421.png)
  ![image](https://user-images.githubusercontent.com/4239376/221971666-1624ff29-7162-4ff7-85d6-628147806a19.png)

</details>

<details>
<summary>C&C Style: Publish-Subscribe</summary>

  * Pure event-based style
  * Useful if you dont know all of your subscribers or you dont know their amount.
  * Useful for sending information for unknown recipients
  * Event distributor can be depicted as a bus or a component
  ![image](https://user-images.githubusercontent.com/4239376/221972871-a4617f16-ce1b-40f0-bcdb-7391f891ef32.png)
  ![image](https://user-images.githubusercontent.com/4239376/221973758-66d1776b-a4c2-44ad-be4b-63b6d3a31c6a.png)
  
  ## Constraints
  * Need to understand which components can listen to which events. Some events could be not public
  * Components can listen their own events (sometimes answer yes, sometimes no)

  ## Example
  * this diagram shows more than just publish-subscribe and it's okay
  ![image](https://user-images.githubusercontent.com/4239376/221974858-01fdbd57-f986-4d32-816f-134010f21df7.png)


</details>

<details>
<summary>C&C Style: Shared-Data</summary>

  * If you see big fat database in the middle of the diagram - it's definitely Shared-Data Style
  * Useful for enterprise management system
  ![image](https://user-images.githubusercontent.com/4239376/221978566-4b0b6f80-050f-47d3-89a9-b7e525b08a11.png)
  ## Example
  ![image](https://user-images.githubusercontent.com/4239376/221978825-2177669c-6898-4709-93d4-87dde2f9036b.png)
</details>

<details>
<summary>C&C Style: Combination of styles</summary>

  ![image](https://user-images.githubusercontent.com/4239376/221984339-37fbb2f2-2d34-4ccb-9f0d-1e1cc482be34.png)
  * same diagram depicted in another style, it loses stylistic richness
  * doesnt let you draw your conclusion in any certainty
  ![image](https://user-images.githubusercontent.com/4239376/221985031-c7b47240-89c6-45f3-ad4c-7b176a6cdbf9.png)

</details>
  
<details>
<summary>C&C Style: Crosscutting issues in different C&C Styles. Grouping in Tiers. Tiers vs Layers. Multi-tier Notation</summary>
  
  ## Tiers vs Layers
  * Layers are used more in Model View. Tiers in C&C view.
  * They can be mapped one-to-one, but it's also possible to map several layers to one tier
  * Tiers are used to check cohesion of components in C&C view
  * Tiers also could be transformed into Packages in UML Notation
  
  * Cross-communication processes issues (when different processes share resources)
  ![image](https://user-images.githubusercontent.com/4239376/221979558-185f15c5-20dd-44b3-8a72-9d3eaee2de14.png)
  ![image](https://user-images.githubusercontent.com/4239376/221979864-2f80b12e-ab71-41a8-8147-78484f9389e6.png)

  ## Tiers. Commonly in Client-Server style
  * Useful to declare connections between tiers (only allowed to communicate with these exact tiers and not with others)
  * Tiers could be pass-through, but should be exclicitly declared
  * Grouping components in tiers, for example Tier execution
  * Client Tier also could be described what clients it has: thin or fat: Thin clients are generally embedded within a web browser. Fat must be installed on the client's machine.
  * Tiers could be depicted as packages in UML notation
  ![image](https://user-images.githubusercontent.com/4239376/221980133-d9a386ff-03cb-4361-bd57-453e92fc6f0f.png)
  * We can declare how tiers are communicating
  ![image](https://user-images.githubusercontent.com/4239376/221980780-b1df0f97-673b-41ef-afd2-ceaf577014e6.png)

  ## Multi-tier notation
  ![image](https://user-images.githubusercontent.com/4239376/221981704-573b4730-8e82-43aa-acd8-a338cdfff9f8.png)
  * Tiers could be depicted as packages in UML notation
  ![image](https://user-images.githubusercontent.com/4239376/221981886-4243f96b-1f8d-49f0-a4e4-b83651260eeb.png)

  ## Dynamic Creation and Destruction
  * Could be done in State-Machine diagram
  ![image](https://user-images.githubusercontent.com/4239376/221982291-8bde9206-97ee-46f0-9be5-7da8687ac3bf.png)
  ![image](https://user-images.githubusercontent.com/4239376/221982337-233a7fdb-eda5-4755-aa6d-76999479b94f.png)
</details>

### Allocation Styles

<details>
<summary>Allocation Styles: Deployment, Install, Work Assignment styles</summary>

**Allocation Style:**
  - Deployment Style
  - Install Style
  - Work Assignment Style
  
  ![image](https://user-images.githubusercontent.com/4239376/222535079-b08e5e93-2a2c-4183-a700-539ea5685a0b.png)
</details>

<details>
<summary>Allocation Styles: Deployment</summary>

  * Puts Software to Hardware mapping  
  * Good for performance, availability, durability, disaster recovery analysis
  ![image](https://user-images.githubusercontent.com/4239376/222535336-bae21403-26f1-4dbe-aa87-2965a0f2f64d.png)
  
  ![image](https://user-images.githubusercontent.com/4239376/222535775-0f73f484-da32-4330-86d4-14f5143d3902.png)

  ## Examples
  ![image](https://user-images.githubusercontent.com/4239376/222536385-e6f4b0dc-8e5d-40bc-9734-43acc771ccee.png)
  * Boxes depict hardware boxes or processors 
  ![image](https://user-images.githubusercontent.com/4239376/222536532-9d44d7c3-ad33-4a62-8463-354dfb519636.png)
</details>

<details>
<summary>Allocation Styles: Install</summary>

  * Useful for creation build-deploy procedures 
  ![image](https://user-images.githubusercontent.com/4239376/222536844-dadfe787-ec0c-4a30-9a69-19fc08690e54.png)
  ![image](https://user-images.githubusercontent.com/4239376/222537239-ac2dd177-5817-4ded-bc03-c136488e819b.png)

  ## Example
  ![image](https://user-images.githubusercontent.com/4239376/222539121-59d6839e-8fcf-4d55-a952-eff063d6440f.png)
  * Same in UML with demonstration internal components
  * EAR - Enterprice Archive. JAR - Java Archive files
  ![image](https://user-images.githubusercontent.com/4239376/222539273-403f3d31-c76d-493d-9f27-fbe3b202f856.png)
</details>

<details>
<summary>Allocation Styles: Work Assignment. "Who will do the job". Specializations: Platform-style, Competence-center, Open-Source</summary>

  ![image](https://user-images.githubusercontent.com/4239376/222540193-470d6f2f-61ce-421b-b374-baa919aa8257.png)
  ![image](https://user-images.githubusercontent.com/4239376/222540537-90f1a5e2-f463-4f78-8b3b-848367e1c780.png)
  
  ## Example
  ![image](https://user-images.githubusercontent.com/4239376/222541615-0b19cafe-e1df-4324-9191-236378ac4c96.png)
  
  ## Specialization. Platform-style vs Competence-center vs Open-Source
  ![image](https://user-images.githubusercontent.com/4239376/222541757-f7374526-7edc-4763-ae9e-76e83d55b5a4.png)

</details>

## Architecture Views. Documenting Software Architecture. Properties to document in your Architecture Document
<details>
<summary>General. Important Concepts of documentation. View-Based Documentation. Types of Views</summary>

![image](https://user-images.githubusercontent.com/4239376/219750980-0702e5a3-6db3-4685-8cc5-4ff8e6c228fc.png)
![image](https://user-images.githubusercontent.com/4239376/219751691-e04c96f0-98d0-4c14-abbd-d38499b950eb.png)
![image](https://user-images.githubusercontent.com/4239376/219752525-21bdeb6b-73e2-4244-85cb-d89c34bfd830.png)
![image](https://user-images.githubusercontent.com/4239376/219753485-0a6e408f-8b03-4352-86bf-64cd1276527e.png)
</details>

<details>
<summary>General. Select Properties to document. Examples in terms of Quality Attribute</summary>
  
![image](https://user-images.githubusercontent.com/4239376/221413977-72f09477-0606-4971-bf51-6e66cfd0a099.png)
![image](https://user-images.githubusercontent.com/4239376/221414027-074597a6-9243-4ce3-ab41-b18641a77d61.png)

  **Example:** 
  1) Performance Attribute: you need to document best and worst response time properties. Or maximum number of event that element can service per time unit (per secord or per minute).
  2) Security: perhaps you need to document the level of encryption and authorization rules for different elements and relations.
  
</details>

<details>
<summary>General. Apply Views. Information on Views. Structural vs Behavioral. Traced-Oriented vs Comprehensive Language</summary>
  
![image](https://user-images.githubusercontent.com/4239376/219764493-bb8a40a1-1c48-47f6-b645-c1b74ce155da.png)
![image](https://user-images.githubusercontent.com/4239376/219765559-21e3002f-dfed-4194-bead-43bbf1b44e8d.png)
![image](https://user-images.githubusercontent.com/4239376/219766076-169470dd-895c-4f87-a5e7-cf4239948e86.png)

## Documenting Behavior. 99% of time in practice you work with traced-oriented language
  ![image](https://user-images.githubusercontent.com/4239376/219766349-2580debe-8de2-4e34-83b9-a74bb8e5459d.png)
  ![image](https://user-images.githubusercontent.com/4239376/219766543-89790e34-53cb-4704-81fe-a441e496b271.png)
</details>

<details>
<summary>View Type: Model View</summary>
  
![image](https://user-images.githubusercontent.com/4239376/219754486-909a08c1-065a-425b-b96a-4abbe3918578.png)
![image](https://user-images.githubusercontent.com/4239376/219755899-118d7db1-d026-42f5-a001-7166f934a7d8.png)
</details>

<details>
<summary>View Type: (C&C) Component And Connector View</summary>
  
**Shortly: how your code maps on resources. Where it executes. What major parameters it has:**  
  - Processor cores vs processes  
  - Sockets  
  - REST APIs (dependency relationships between information carriers)  
  - Where your code is executed: Client Machine vs Server, PC or Mobile.  
  
** Attachments:**  
  - Output from one port to another Input port  

** Quality of service information**  
  - Amount of requests per hour
  - Latency
  
![image](https://user-images.githubusercontent.com/4239376/219756377-f2a44236-6311-41d7-884c-680fbcff8d4d.png)
  
## For what?
![image](https://user-images.githubusercontent.com/4239376/219757698-00198569-458e-4212-8650-9e5cc46eab9e.png)
  
</details>

<details>
<summary>View Type: Allocation View: Deployment, Implementation views. Their Refinements</summary>
  
Details: https://sites.google.com/site/softwarearchitectureinpractice/9-documenting-software-architecture/d-allocation-views
  
**Shortly: About requirements where and how application runs**
  - Memory requirements  
  - Processor requirements  
  - Execution in processes and threads
  
**Allocation View consist of:**
  - Deployment view (how and where you deploy your app)
  - Implementation View
  
![image](https://user-images.githubusercontent.com/4239376/219758203-12ca33d8-a1f9-425e-8a80-c6a60820d3c1.png)
  
  ## Implementation Refinement
  * On the right we reveal that our connector is event dispatcher
  * It might help to understand how teams need to change their interfaces to interact with dispatcher appropriately
  * New questions to architect may appear and potentially you need to put your attention to how exactly event bus will work and what limitations now you have
  * diagram on the left could be interested to people who are not so interested in tech details. The right - people who are more concerned about design
  ![image](https://user-images.githubusercontent.com/4239376/222928073-ed5d5464-9395-49e4-9bba-f18ca36bda11.png)

</details>

<details>
<summary>Heterogenerity Architecture Style & View: Demonstrate a mix of approaches on one diagram. Examples</summary>

![image](https://user-images.githubusercontent.com/4239376/221411778-c6468fee-accf-412f-939a-864b5bf14686.png)
![image](https://user-images.githubusercontent.com/4239376/221411761-752fdcc2-58bd-43ca-8e8c-d509ba6240f1.png)
![image](https://user-images.githubusercontent.com/4239376/221411860-2d316ac7-b9d3-475f-ac0d-32db91dc063d.png)
</details>

<details>
<summary>Notations for Architecture View. Model View. Uses View. Generalization View</summary>
  
## In General
![image](https://user-images.githubusercontent.com/4239376/219767641-0daf212d-bd61-4951-bee8-1cfe58730bb0.png)
  
## Notations for Model View. Decomposition View
![image](https://user-images.githubusercontent.com/4239376/219768121-f3f11f5c-c7d1-416c-8685-10ec33d73a7e.png)
![image](https://user-images.githubusercontent.com/4239376/219768319-704392bc-1e2d-40e1-9f85-9df01996cb24.png)

## Notations for Uses View
![image](https://user-images.githubusercontent.com/4239376/219769094-191645c6-7ab3-43d4-b44c-c85dc2de8967.png)
![image](https://user-images.githubusercontent.com/4239376/219769647-f230d72b-4b9d-46a3-a6ee-96ac05068bd9.png)

## Notation for Generalization View  
![image](https://user-images.githubusercontent.com/4239376/219770915-23fc3251-6d7a-4109-9f57-62bb06a36d17.png)
![image](https://user-images.githubusercontent.com/4239376/219771007-2fbf4a07-19fe-4f79-8181-0ef73f1567b3.png)

  
## Notation for Layered View. Usually used for portability and usability
  ![image](https://user-images.githubusercontent.com/4239376/219770808-18b27353-f509-4f9f-914e-7782ccb71e99.png)
  ![image](https://user-images.githubusercontent.com/4239376/219773917-cf2bfc2a-2591-40d0-b0fd-19cad08c9e30.png)
![image](https://user-images.githubusercontent.com/4239376/219774409-6d108a9e-032b-4a31-a150-48aeee4c01e3.png)

</details>

<details>
<summary>What View You need to Document. General pieces of advice</summary>

1) Check who is your stakeholders
2) What diagrams each of them need to understand and sell your product
3) Consolidate views (if their number is too high)
4) Rationale of your design decisions
5) Functional, Non-functional attributes and constraints of your system
5) Legend on all diagrams

![image](https://user-images.githubusercontent.com/4239376/219941203-af146802-c388-4838-a3b8-77e9fd0a3a4c.png)

## Put the legent to each diagram:
![image](https://user-images.githubusercontent.com/4239376/219941239-eeba534c-d85e-4238-8249-21867e7d0250.png)

</details>

## Documenting Architecture. General Structure. General Principles. Mapping Requirements

<details>
<summary>General Document Structure. General Principles</summary>
    
  ### General Structure
  ![image](https://user-images.githubusercontent.com/4239376/224507722-9e5f5e9c-5981-4bdc-af5c-55539ced7fc2.png)

  ### Principles
  ![image](https://user-images.githubusercontent.com/4239376/222563674-d1be3db7-90f9-4917-895d-1be225da216b.png)
  ![image](https://user-images.githubusercontent.com/4239376/222563196-cac44204-8347-458f-b274-053b25166f48.png)
</details>

<details>
<summary>Mapping requirements to design Decisions. Microsoft template</summary>
   
  ![image](https://user-images.githubusercontent.com/4239376/224508691-b3b81391-06cf-4a69-8884-70552b85d4bf.png)
  ![image](https://user-images.githubusercontent.com/4239376/224508707-c0da686e-1674-4477-885e-01aa103787db.png)
    
  ### Where to record such mapping
  ![image](https://user-images.githubusercontent.com/4239376/224508792-3dcb67a9-98a5-45b4-993a-508f99e6071a.png)
  ![image](https://user-images.githubusercontent.com/4239376/224508893-e6429d6d-0916-40cc-8f46-eeeace94a586.png)
  #### Allocation view could be used to depict mapping between requirements and design decisions.
  * if could be a part of software design explanation
  ![image](https://user-images.githubusercontent.com/4239376/224508958-113a9bf9-1311-4bed-9c72-676cee75b49c.png)

  ### Summary. Microsoft Reference Template
  ![image](https://user-images.githubusercontent.com/4239376/224509116-712e6221-efe0-444e-963b-3dc904303c2e.png)
</details>

### Combine Views. Hydrid View
<details>
<summary>What Views to choose. 3 step principle: Build Stakeholders table, Combine Views (rule of thumb), Prioritize documentation. Part 1</summary>
  
  ## Stakeholders table
  * PS: It's also important to include at least one Model, one C&C diagrams to your documentation.
  * Build Stakeholders table
  * Dont accept all their wishes, you need to document architectures which help them in their work, not "just nice to have"
  ![image](https://user-images.githubusercontent.com/4239376/222925407-e7c2869c-f300-43ac-9958-90275ffdc5cd.png)
  ## Which View to apply?
  ![image](https://user-images.githubusercontent.com/4239376/222925817-5dda8d2e-f878-4f0c-81e1-8a2e15725d32.png)

  ### Example using real system
  ![image](https://user-images.githubusercontent.com/4239376/222925500-55417008-c32d-4691-af8e-e408ec4b5848.png)
  ![image](https://user-images.githubusercontent.com/4239376/222925612-4554746d-07c5-4c4a-b182-843c3ec2b318.png)
  * D - detailed, S - some information, O - Overview
  ![image](https://user-images.githubusercontent.com/4239376/222925937-9d719e3e-7701-4d5d-bb9f-bcb9cea5a0a7.png)
  
  ## Combine Views. use Rule of Thumb 
  ![image](https://user-images.githubusercontent.com/4239376/222926283-b7eb536c-dffb-4db7-9f83-903e0bde45aa.png)
  ### Example. View set
  * Instead of 12 diagrams we selected 8 and decide to make combine view for 2. It means we need 7 diagrams
  * It still could make our documentation redundant, so we need to prioritize them and combine-simplify them if they are not super important  
  ![image](https://user-images.githubusercontent.com/4239376/222926337-4b001d74-5a19-4e63-8ec9-98a332c47d6f.png)
  
  ## Prioritize and Stage documentation
  * Hints
  * Go with high overview (not detailed architecture). It lets developers start their job and will help forming budgets
  * High overview helps to begin the analysis
  ![image](https://user-images.githubusercontent.com/4239376/222926513-46a5a78e-6f88-4b65-8cff-23c0398d2b55.png)
  ### Merging different views together
  * Having 7 views after prioritization we receive 3 primary and 4 minor views.
  ![image](https://user-images.githubusercontent.com/4239376/222926577-3c71e88d-2281-4f16-b4bc-b4a455c18cf3.png)
  ![image](https://user-images.githubusercontent.com/4239376/222926652-0f548d93-e874-42b8-b934-2ebdb43575ee.png)

  ## Summary
  ![image](https://user-images.githubusercontent.com/4239376/222926737-871d0a6e-0ccf-4eba-81fb-83c4e7c203ee.png)
</details>

<details>
<summary>Combine Views. Hybrid Views. Overlay Part 2</summary>
  
 ![image](https://user-images.githubusercontent.com/4239376/223840773-c21c271c-69c9-45d5-9ae5-6f3f18b582d6.png)
    
 ## Overlay approach. Examples  
 ![image](https://user-images.githubusercontent.com/4239376/223841089-cc13f9af-5f42-46d6-85e5-35183a969926.png)
 ![image](https://user-images.githubusercontent.com/4239376/223841397-d70f9259-b3ae-4f23-864f-682e1c2a21ef.png)
    
 ## Case. Example   
 * we had 2 small diagrams and decided to merge them together
 ![image](https://user-images.githubusercontent.com/4239376/223844752-5c8c2aee-6f7c-483f-afa3-2d0de69f7653.png)
 * such overlaying might recognize the component which is not well defined and understand how we gonna built it
 ![image](https://user-images.githubusercontent.com/4239376/223844578-77799319-ff59-42b3-805d-89a25d91b9dc.png)

 ## Tips and Tricks
 * in case of aspects and generalization: aspects are special kind of classes and in generalization view they overlay very easily
 ![image](https://user-images.githubusercontent.com/4239376/223843789-456293eb-4946-4fd5-84fd-9847d0932695.png)
    
 ## Summary
 ![image](https://user-images.githubusercontent.com/4239376/223845280-8bbf9e0e-e683-4542-bb16-888ef3314f20.png)   
</details>

### Documenting Interfaces, Behavior, Context

<details>
<summary>Documenting: Interfaces</summary>

  ## General idea
  ![image](https://user-images.githubusercontent.com/4239376/222552044-50e2b3b4-6878-4372-a89e-d6fa725fe6e8.png)
  ![image](https://user-images.githubusercontent.com/4239376/222550018-dd23ec6a-5537-44c9-9e77-85465681a37e.png)
  
  
  ## Examples
  ![image](https://user-images.githubusercontent.com/4239376/222549841-46290b9c-5884-485d-80f4-6c78b18bc491.png)
  ![image](https://user-images.githubusercontent.com/4239376/222550281-64a7f6ce-da46-4905-b8c7-cc15e9e70a42.png)
  ## UML Example with explanation
  ![image](https://user-images.githubusercontent.com/4239376/222550783-c1c47361-a110-457c-97d6-8d6c729a2327.png)
  ![image](https://user-images.githubusercontent.com/4239376/222550913-55861eba-1a50-4a6e-9a8c-cd9376b21a60.png)
</details>

<details>
<summary>Documenting: Behavior. Dynamic properties vs static properties. time to response (TTR), Throughput</summary>

  * Behavior documentation is needed to declare dynamic properties of built system: time to response, throughput, etc.
  * It supports system analysis as it executes.
  * Answers on "in what order components interact".
  * Depicts transition from State to State to State
  * What the system status under certain circumstances
  * How the system startup
  * Can guarantee that the system works as indended under variety of conditions
  

  ![image](https://user-images.githubusercontent.com/4239376/222555628-6f8ef5fa-34e7-43a6-85f7-a730c4c9533e.png)
  ![image](https://user-images.githubusercontent.com/4239376/222554986-461ac3d8-e743-4b1e-8a7c-d4e7bb63f6d6.png)
  ![image](https://user-images.githubusercontent.com/4239376/222921012-1964adb9-8a08-4872-8283-881b1fbdde71.png)
</details>

<details>
<summary>Documenting: Behavior. When and why. Trace-oriented vs Comprehensive language</summary>
  
  * useful in documenting interfaces and templates
  ![image](https://user-images.githubusercontent.com/4239376/222922289-8a7c27b8-f18a-4897-bd8e-fb0475fad424.png)
  ![image](https://user-images.githubusercontent.com/4239376/222922355-f65356c3-2b55-4763-919e-5ba560250ce4.png)
  
  * Both Comprehensive and Trace-oriented may represent the whole system and any part of sub-systems
  ![image](https://user-images.githubusercontent.com/4239376/222922370-38d3f5cd-47ce-42ed-beaa-d36cc22e9cbc.png)
</details>

<details>
<summary>Documenting: Behavior. Trace-oriented Language & Comprehensive Language. BPMN Notation. Diagrams: Collaboration, Sequence, Activity</summary>

  ![image](https://user-images.githubusercontent.com/4239376/222921068-c67086cf-9669-47c0-8dd7-dad10dd0efd4.png)
  ### Trace-oriented Language
  * Trace-oriented language answers on the question "what happens when particular stimulus arrives or in specific state"
  * It does not help us to capture all possible behaviors unless you are collecting them
  
  ### Comprehensive Language
  * Shows complete behavior of that system
  * usually Statemachine or StateChart diagrams
  
  ![image](https://user-images.githubusercontent.com/4239376/222921260-f3723b65-4f50-49bf-a7ff-dd94635d4cd4.png)
  
  ## Activity diagram
  ![image](https://user-images.githubusercontent.com/4239376/222921360-51199c1a-fdba-42dc-8c97-ca25cda87c36.png)
  ### Activity diagram example
  ![image](https://user-images.githubusercontent.com/4239376/222921496-812f3388-a3e0-4b6a-8306-27117f5cefef.png)
  
  ## BPMN
  ![image](https://user-images.githubusercontent.com/4239376/222921628-ee26e08b-e1d8-46dc-8e82-9d6abcc615b7.png)
  ### BPMN Example (Same diagram as Activity diagram, but with another focus)
  ![image](https://user-images.githubusercontent.com/4239376/222921667-52c55c0d-6e89-44ca-8202-5ddb0ca2aee5.png)

  ## Sequence (rely on Trace-oriented Language)
  * Sequence diagram shows only one trace, not all possible traces
  ![image](https://user-images.githubusercontent.com/4239376/222921715-3d57174f-9f0a-4ee5-9dfb-6c80135441ef.png)
  ### Sequence diagram example
  ![image](https://user-images.githubusercontent.com/4239376/222921768-af5b8e15-352b-4fcf-a67e-cf95fcb41d4a.png)
  ### Sequence diagram in UML
  ![image](https://user-images.githubusercontent.com/4239376/222921839-94b7eee0-2ddd-41f3-ae08-ea1c1c2cc482.png)
  
  ## State Machine diagram
  * Not good for showing interactions among components becaue states are not software modules, but state of subsystem or system
  * Tend to be well understood by developers and programmers, but not managers without giving extra explanation
  ![image](https://user-images.githubusercontent.com/4239376/222921891-1d1c157f-921d-45b4-9246-93c4ffcc4618.png)
  ### State Machine example
  * It's possible that two different transactions could become eligible
  * State machine diagram could depict parallel processes
  * One state machine could depend on another state machine
  ![image](https://user-images.githubusercontent.com/4239376/222922024-92e9ca52-9c40-43c0-8401-cca2b6960bc0.png)
</details>

<details>
<summary>Documenting: Context Diagrams. Their Notations. System, environment, Relations. in C&C and Layered view.</summary>
  
  ![image](https://user-images.githubusercontent.com/4239376/222928379-9ef55983-3525-4eba-9639-b3c4920f9f8e.png)
  ![image](https://user-images.githubusercontent.com/4239376/222928419-f4c57623-b4b6-4249-9ecf-62db235092d9.png)
  ![image](https://user-images.githubusercontent.com/4239376/222928516-f320bcc8-e52e-433b-88da-1cfef24318b3.png)
  
  ## Example and explanation
  ### General idea
  * apply Context diagram only to one view in order to not repeat yourself each time
  * you may show on context diagram the system itself and its runtime interactions with environment
  * Runtime suggests C&C View for that
  ![image](https://user-images.githubusercontent.com/4239376/222928523-05467fa5-ddc7-49fb-ab30-61936350b6cb.png)
  
  ## Context in layered View
  ![image](https://user-images.githubusercontent.com/4239376/222928707-8ba5d094-e983-44a8-8a7e-85e5a5916fcf.png)
  ## In other views
  ![image](https://user-images.githubusercontent.com/4239376/222928839-51a8beb3-4f50-4126-b192-66d85d476d26.png)

  ## Notations. Boxes and Lines, UML.
  ![image](https://user-images.githubusercontent.com/4239376/222928927-ded7f17d-16c3-41a0-a64b-b87241bbf476.png)
  ![image](https://user-images.githubusercontent.com/4239376/222928986-ddb0b82a-5146-4695-85be-1c365a86e795.png)

</details>

<details>
<summary>Documenting: Decisions. Capturing Complex Architecture Decisions. 12 steps-parts document</summary>

 ## General rule. When and What
 * If decision took 5 minutes - probably it's not worth to document. 
 * If 5 days - so, yes.
 * Document the future steps especially if you have concerns regarding decisions you have made. Good start point in the next communication with your manager.
 ![image](https://user-images.githubusercontent.com/4239376/223834467-f9975bd9-c437-4ccc-a17e-07d944182c05.png)
 ![image](https://user-images.githubusercontent.com/4239376/223836065-2825f193-04b1-43ce-9310-a2113a1da90a.png)
 ![image](https://user-images.githubusercontent.com/4239376/223837076-d5b362f8-93ab-4ae6-9589-ad1efc845b82.png)

 ## Complex Architecture Decisions
 * Consists of 12 steps. All are on slides
 ![image](https://user-images.githubusercontent.com/4239376/223829002-161b8c0f-a735-4497-a073-1933de5385d5.png)
 ![image](https://user-images.githubusercontent.com/4239376/223830359-9b0b91ee-e779-4096-96d6-a3a9d6ac1ea5.png)
    
 * in section 9 you may declare what temporarly decisions you have made. It's useful because you can declare unfortunate cases when you need to move back and reconsider because you hit the dead end.
 * Under affected Artifacts you can but what's affected - budgets and\or schedules. 
 ![image](https://user-images.githubusercontent.com/4239376/223831203-4abd96b4-bb18-4612-8bd5-e582927ac21e.png)
</details>

<details>
<summary>Documenting: Evaluation of Alternatives and Objectives</summary>

  ![image](https://user-images.githubusercontent.com/4239376/223833507-2e513487-057b-4606-a659-0f88d2d51e95.png)
</details>

### View Packets. Alternatives. How to build and document

<details>
<summary>Documenting: View Packets</summary>

  * View packets is the way to split complex diagrams on parts. 
  * Each view has parent, child, and\or siblings.
  * In case you have view packets the overall document will lot a bit another
  ![image](https://user-images.githubusercontent.com/4239376/224507126-fc519721-56f8-4a0f-bbb4-57568cf1fdcd.png)
    
  * View packets could also be very useful in ADD because inside View packet you can solve specific attribute questions.
  * Create view and assign it particular responsibilities
  * It also useful to save chronological predecessors 
  ![image](https://user-images.githubusercontent.com/4239376/224507219-dba56a0a-c73e-4eb0-a7a4-90ff33ce7164.png)


  ## Examples when view packets could be helpful
  ![image](https://user-images.githubusercontent.com/4239376/224507152-d38ca4d3-8906-43ab-a206-13427185af5a.png)
  ![image](https://user-images.githubusercontent.com/4239376/224507166-8ea6f1f8-86a4-4871-8d6f-cffecbecb231.png)
  
  ## Alternatives
  1. Make huge unwieldy diagram but use the tool to present and use it with zoon-in, zoom-out, and fly-through abilities
  2. Series of diagrams
  
  ## Summary
  ![image](https://user-images.githubusercontent.com/4239376/224507419-fe7938dc-2e72-41aa-b589-24d99c6c7c52.png)
</details>

## Views and Beyond. Alternatives: ISO 42010 (ISO\IEC 42010), DoDAF, Documentation in Agile

<details>
<summary>Views and Beyond. Template for Beyong view and rationale</summary>

  ## General structure
  ![image](https://user-images.githubusercontent.com/4239376/224508242-786bc9ab-7100-4b26-816a-8e3257571072.png)
  ![image](https://user-images.githubusercontent.com/4239376/224507837-e94c9cc7-d16a-431c-a572-78503490b63b.png)
  ![image](https://user-images.githubusercontent.com/4239376/224507888-fdfccf25-64f6-47f6-8c1e-d8ed276c8011.png)
  
  ### Mapping
  ![image](https://user-images.githubusercontent.com/4239376/224508039-e6ece4ee-9548-49a7-9d1e-484cdb9c4871.png)
  ### Directory
  * in directory you may find better outcome from stakeholders than you expect.
  * here you can discuss acronyms
  ![image](https://user-images.githubusercontent.com/4239376/224508116-3d4544c8-5c4a-489c-8ba6-1269fcdf1c2c.png)
  ## Background
  ![image](https://user-images.githubusercontent.com/4239376/224508175-046f748b-11e5-40e7-93d8-ff0e39c7af99.png)
</details>
    
<details>
<summary>ISO\IEC 42010 (also known as IEEE 1471-2000). ISO42010 vs "Views and Beyond".Alternative to "Views and Beyond"</summary>

  ## ISO\IEC 42010. Also known as IEEE 1471-2000. Enterprise standard.
  ![image](https://user-images.githubusercontent.com/4239376/224509578-f4e4d2c7-a4e3-4ba9-9052-e45e4bb53de1.png)
  ![image](https://user-images.githubusercontent.com/4239376/224509656-ac1b8c34-d74c-4a29-90b1-0de7f756f7fe.png)
  ![image](https://user-images.githubusercontent.com/4239376/224509710-d3a2d5fb-dc97-4b11-b99c-029b4ebb26e4.png)
  
  ## Structure
  ![image](https://user-images.githubusercontent.com/4239376/224509770-da33e570-588b-47a0-90d1-27be348af3fa.png)
    
  ## 42010 Also defines view as representation of the whole system from perspective of related concerns
    ![image](https://user-images.githubusercontent.com/4239376/224509958-7a6c3bf4-936d-496d-9ad0-ca90d831ae67.png)

  ## 42010. Content Requirements
  ![image](https://user-images.githubusercontent.com/4239376/224510043-0673edbe-228f-4fe0-9aa6-cde4c15e9616.png)
  ![image](https://user-images.githubusercontent.com/4239376/224510165-c2ca1700-8bef-4d0e-b4f2-5dc890759709.png)
  ![image](https://user-images.githubusercontent.com/4239376/224510187-4ad380de-18f6-4716-b8e7-aa3c3a3ba22c.png)

</details>
 
<details>
<summary>ISO 42010 vs Views and Beyond. Differences and Similarities</summary>
    
  ## ISO42010 vs Beyong Views
  ![image](https://user-images.githubusercontent.com/4239376/224510316-ac8b2be9-2dd5-4548-886c-5f821c710179.png)
  ![image](https://user-images.githubusercontent.com/4239376/224510384-b92d0260-2209-413d-a4e0-e18fc1d05eef.png)
    
  * 42010 requires explicit identification of stakeholders and their concerns
  ![image](https://user-images.githubusercontent.com/4239376/224510432-92126ea6-08d9-4251-ad92-b4952f5d3bb8.png)
    
  * 42010 requires that you define the viewpoints. In Views and Beyond it's close to "architecture styles"
  ![image](https://user-images.githubusercontent.com/4239376/224510492-ee76885d-6449-46d0-a6a4-14c0eb7b43ca.png)
  ![image](https://user-images.githubusercontent.com/4239376/224510589-e6dae783-8204-4915-984e-ac4ac27b8a03.png)

</details>
 
<details>
<summary>DoDAF. Alternatives to "Views and Beyond"</summary>
  
 ## Summary. NOT A GREAT CHOICE.
 ![image](https://user-images.githubusercontent.com/4239376/224510816-2ab24d1b-9bb8-41b1-924c-06547b4e1bf3.png)
 ![image](https://user-images.githubusercontent.com/4239376/224510826-c0a4e519-4f4e-4a45-bc78-cca1795611d1.png)

    
 ## General Structure
 ![image](https://user-images.githubusercontent.com/4239376/224510748-11bb7ae4-40ce-44cd-8c17-6d903db9ef92.png)
    
 ### DoDAF Pros
 ![image](https://user-images.githubusercontent.com/4239376/224510766-531c8c26-849f-4196-824e-2dee57e83263.png)
 ### DoDAF Cons
 ![image](https://user-images.githubusercontent.com/4239376/224510792-d8ba1e82-830f-4639-8c52-40c6655dff81.png)

    
 ![image](https://user-images.githubusercontent.com/4239376/224510685-50cac6b9-ea5f-4011-aa13-6dacdbcd9789.png)
 ## Operational View. All-view
 ![image](https://user-images.githubusercontent.com/4239376/224510704-74673c78-18d5-4411-9fa0-14bdab3902ef.png)
 ![image](https://user-images.githubusercontent.com/4239376/224510720-5a8682bb-ea7b-466c-8174-29819b403323.png)
</details>

<details>
<summary>Documentation in Agile. Alternatives to "Views and Beyond"</summary>

  ## Summary
  * ISO42010 works well in Agile environment, so better to go straight with this format
  * Views and Beyond works well in Agile as well. Views and Beyond could be made compliant to ISO42010 in Agile environment as well
   
  ## General
  ![image](https://user-images.githubusercontent.com/4239376/224510873-ed2677cd-ccc3-4e2e-b97a-45ec5715f174.png)
  ![image](https://user-images.githubusercontent.com/4239376/224510904-9e1151af-e449-4fea-965c-8e52d1089d16.png)

  ## Points
  ![image](https://user-images.githubusercontent.com/4239376/224510947-fbe89ef9-333e-4be8-8cf1-65eb6b7249f7.png)
  ![image](https://user-images.githubusercontent.com/4239376/224510972-d89186d5-8d07-4195-b74c-3dd8e3a5af5a.png)

  ## BDUF and SAFe
  ![image](https://user-images.githubusercontent.com/4239376/224510996-50b36471-9107-4624-9495-df6244647bec.png)
  ![image](https://user-images.githubusercontent.com/4239376/224511013-7b343795-fa2a-4d4b-ad8e-699ecae98543.png)

</details>
    
## Reviewing Architecture Documentation. 6 Steps. Active Reviewing 

<details>
<summary>6 steps of Documentation Review Process</summary>

 ### Overall
 * Avoid the type of review process when you gather people two weeks before deadline.
 ![image](https://user-images.githubusercontent.com/4239376/224145126-6d7d9abc-950c-400c-b63d-7375eddc4981.png)
    
 ### Step 1. Identify Stakeholders
 ![image](https://user-images.githubusercontent.com/4239376/224145744-0a64ea6e-9266-4899-a80d-8213786205a4.png)
 ![image](https://user-images.githubusercontent.com/4239376/224146183-c5ef2b36-a58b-4453-ad01-162ebca873de.png)

 ### Step 2. Identify Artifacts needed to be on hand for the review
 #### Also it's important to understand what else stakeholders need along with architecture diagrams
 ![image](https://user-images.githubusercontent.com/4239376/224146813-6ebe3746-d1ad-43f3-b346-7e820e477558.png)
    
 ### Step 3. Build question set
 #### Worst scenario if you ask reviewers "let us know what you think!"
 ![image](https://user-images.githubusercontent.com/4239376/224147576-676e21a3-baf5-4bd3-a9de-e497c7cacb62.png)

 ### Step 4. Plan the Review. Manage date, participants, assign questions
 #### Options: group workshop, all in one room or separate meetings in parallel. One-one interviews are also applicable
 ![image](https://user-images.githubusercontent.com/4239376/224148458-3f69b3cc-ed38-4a35-b93d-0713327179dd.png)
 ![image](https://user-images.githubusercontent.com/4239376/224148890-61819e28-f85a-4a4e-9f7c-f7b17f34da0d.png)
 #### New option: Active design review
 * Avoid the type of review process when you gather people two weeks before deadline.
 ![image](https://user-images.githubusercontent.com/4239376/224149473-77acdc22-ecff-419f-b910-84058f573d17.png)

 ### Step 5. Perform the Review session
 * Gather questions and answers
 * Gather strenght and weaknesses of your document
 ![image](https://user-images.githubusercontent.com/4239376/224151878-4d191a2b-c1f8-48cc-93c3-6d7b7d42408e.png)
    
 ### Step 6. Summarize results
 * Aggregate questions from reviewers
 * Find problems in document. It's not simple "Pass\Fail", it's about finding weaknesses in documentaion
 ![image](https://user-images.githubusercontent.com/4239376/224152101-c42fa067-943b-4849-8800-f51c665695f4.png)
</details>

## Architecture Evaluation. Measure and Output. ATAM
<details>
<summary>Architecture Evaluation. Approaches and Techniques. Evaluation Output</summary>
  
## Measuring Techniques:
  ![image](https://user-images.githubusercontent.com/4239376/219947397-c787f8f7-53da-4818-927b-32fe8611981d.png)  
  ![image](https://user-images.githubusercontent.com/4239376/219947410-f742722d-53a2-4804-8f61-ae022e2f076f.png)  


![image](https://user-images.githubusercontent.com/4239376/219947351-91171157-58e5-48ce-84f3-115cd8e13c09.png)
  
## Evaluation Output:
  ![image](https://user-images.githubusercontent.com/4239376/219947542-c6efb33a-6684-4096-9413-141a4f922cca.png)
</details>

<details>
<summary>ATAM. Risk identification method</summary>

## ATAM Conceptual flow
![image](https://user-images.githubusercontent.com/4239376/220183242-4d28d4ff-a481-438d-a775-0285700bfee3.png)

**The point of ATAM is only to find risks, not to mitigate them**
**You can do that through elisit the right questions to architects, senior designers and key developers**
**So, its risk identification method, not risk resolution method**
**We do not provide precise analysis**

![image](https://user-images.githubusercontent.com/4239376/220177894-ed64d574-279d-416b-ac61-47ed606582d7.png)
  ![image](https://user-images.githubusercontent.com/4239376/220177967-ad83a3e5-d1a4-4deb-a442-f148c3202193.png)
  
## When to use:
![image](https://user-images.githubusercontent.com/4239376/220178382-b1586c49-ab82-446d-b4d6-55731a89c60a.png)

* After creating architecture, but not so much code is in place;
* Check existing system architecture, evaluate it;
* Decide whether we will build this system or buy it from 3rd party vendor;

## ATAM Phases

![image](https://user-images.githubusercontent.com/4239376/220178633-17f036b9-4d31-4504-95eb-36e5aa364a7c.png)

## Phase 0: gather a small group of architects and evaluators and discuss what you are going to evaluate, what you have, etc.
![image](https://user-images.githubusercontent.com/4239376/220178875-643d783f-e955-492c-986f-4eca794eecd3.png)

## Phase 1: explain what ATAM is about, what the process, who needs to be there, expectations
### Business goals from Project Owners;
### Architect presents an architecture;
### Utility Tree; L,M,H - how important in terms of business (1st value, Highly important, Low importance) and how risky (2nd, High risks, Low risks). 
![image](https://user-images.githubusercontent.com/4239376/220179072-6a68a464-a184-48b1-a720-dfb58929144d.png)
![image](https://user-images.githubusercontent.com/4239376/220179604-f19362d3-3da5-45f8-b481-681ba6843722.png)
![image](https://user-images.githubusercontent.com/4239376/220179811-6fb41f20-fa54-4dac-86e7-d114e6730dfd.png)

**H,H scenarios - our main business scenarios and drivers we must focus on**

## Scenarios:
![image](https://user-images.githubusercontent.com/4239376/220180682-b6bfbf30-eabf-4a6a-96ba-da6c4705c201.png)
![image](https://user-images.githubusercontent.com/4239376/220180725-bf8d950c-d9ac-4799-bbb1-87c34355654e.png)
![image](https://user-images.githubusercontent.com/4239376/220181588-7da30598-a423-45c5-aed8-2e98e8a355f0.png)
![image](https://user-images.githubusercontent.com/4239376/220181745-d3e64522-cd1a-4902-b89c-b9735a46fc8b.png)

## Risks and Tradeoffs. Non-risks:
![image](https://user-images.githubusercontent.com/4239376/220182147-5160504e-a1cf-4f09-8d2e-742f0c97a031.png)
![image](https://user-images.githubusercontent.com/4239376/220182228-399221a5-d26b-45bf-9132-6d070f1cb64d.png)

Non-risks may become risks if situation changed

## Phase 2. More like QAW, workshop, scenario brainstorming. we do more architecture analysis, gather more scenarios from broader group and map on architecture approaches:
![image](https://user-images.githubusercontent.com/4239376/220182604-1a883d10-d985-43bc-b9ea-88aad3a95c54.png)
![image](https://user-images.githubusercontent.com/4239376/220182751-72bf4b4e-3b52-4063-8b46-7bd38e63a744.png)

## Phase 3. Formal meeting\presentation about findings
![image](https://user-images.githubusercontent.com/4239376/220183052-87c55330-4b6a-42ee-910f-4965a16cb273.png)
![image](https://user-images.githubusercontent.com/4239376/220183077-3bd0cde0-9e6f-4cda-8ef5-b4e61f732edc.png)
</details>

## Architecture Rule of Thumb. Rules to follow in architecture
https://www.linkedin.com/pulse/architecture-10-rules-thumb-matthew-golzari/  
https://medium.com/@i.gorton/six-rules-of-thumb-for-scaling-software-architectures-a831960414f9  


## Carnegie Mellon University Slides. Solution Architecture Principles in Practice
[Solution Architecture Principles in Practice.pdf](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/10609704/SAPP.V13.-.2021.pdf)  
[Solution Architecture Principles in Practice,_Student_Workbook_2020.pdf](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/10609706/SAPP_Student_Workbook_2020.pdf)  

## SEI Exams
SEI Software Architecture Professional Exam: https://www.sei.cmu.edu/education-outreach/courses/course.cfm?courseCode=V19
Service-based Architecture Professional Cert: https://www.sei.cmu.edu/education-outreach/credentials/credential.cfm?customel_datapageid_14047=15189

# Architecture Materials. AZ-304 SA Azure Architecture Design Exam materials

## Powershell intro
[powershell materials coming from Skylines Academy](https://slstudentpublic.blob.core.windows.net/operations/PowerShell%20Guide_AZ__Skylines%20Academy-v3-Student.pdf)

<details>
<summary>SLA, SLO, SLI</summary>
Difference: https://www.atlassian.com/incident-management/kpis/sla-vs-slo-vs-sli   
* SLI Explained in details:  
http://cs.brown.edu/courses/csci2952-f/slides/Class9.pdf  
SLI Of The Platform  
- Critical Replica Threshold = CRT  
- Available replicas = min(total available pods, CRT)  
- Replica availability = (available replicas / CRT) * 100  
- Critical Replica Availability = mean(replica availability of each service)  
</details>

## AZ-300 AZ-301 AZ-304 AZ-305 Exam tips
[AZ+301 SKYLINES ACADEMY Slides_Student_Version.pdf](https://github.com/Glareone/AZ-304-SA-Azure-Architect-Design/files/8092664/AZ%2B301%2BSlides_Student%2BVersion_Skylines%2BAcademy.pdf)

### SKYLINES ACADEMY MATERIALS:
[SECTION-1 Workload requirements](https://www.skylinesacademy.com/az301-section-1)  
[SECTION-2 Identity and Security](https://www.skylinesacademy.com/az301-section-2)  
[SECTION-3 Data Platform Solutions](https://www.skylinesacademy.com/az301-section-3)  
[SECTION-4 Business Continuity](https://www.skylinesacademy.com/az301-section-4)  
[SECTION-5 Deployment, Migration, Integration](https://www.skylinesacademy.com/az301-section-5)  
[SECTION-6 Infrastructure Strategy](https://www.skylinesacademy.com/az301-section-6)  

# [Logging. Monitoring. Design solutions for them](Logging,Monitoring.md) 
Insights and everything related to that.
* All information related to logging and monitoring are grouped here: [Logging and Monitoring Information](Logging,Monitoring.md)

# Cost Optimizations materials

# Security materials
## [Design Authorization & Authentication, Azure AD, Key Vault, Managed Identities, SAS](authentication%20authorization.md)
* Azure AD, Azure AD Connect, Azure AD Connect sync, Azure AD B2B, Azure AD B2C, Azure AD Conditional Policies
* Managed Identities, User-defined, System-defined
* Azure Key Vault, when to use  
* SAS Token, when to use  
 
All information related to Authorization and Authentication is here: [Authentication, Authorization, Azure AD and features](authentication%20authorization.md)
## [Managed Identities, Authentication Vault](service%20principals%2Cmanaged%20Identities%2Cvault%20authentication.md)

## Design Security

RBAC:  
![RBAC](https://user-images.githubusercontent.com/4239376/161835404-f9acb169-f5ed-422e-95a4-b9d86b7294ea.png)  
Policy:  
![policy](https://user-images.githubusercontent.com/4239376/161835520-9f0175eb-34e9-49fb-b560-c5243f85b8cc.png)

**Consider how Azure policy is different from role-based access control (RBAC).**  
**It’s important not to confuse Azure Policy and Azure RBAC. Azure RBAC and Azure Policy should be used together to achieve full scope control.**

1.  You use Azure Policy to ensure that the resource state is compliant to your organization’s business rules. Compliance doesn’t depend on who made the change or who has permission to make changes. Azure Policy will evaluate the state of a resource, and act to ensure the resource stays compliant.

2.  You use Azure RBAC to focus on user actions at different scopes. Azure RBAC manages who has access to Azure resources, what they can do with those resources, and what areas they can access. If actions need to be controlled, then use Azure RBAC. If an individual has access to complete an action, but the result is a non-compliant resource, Azure Policy still blocks the action.

| Area	           |  Azure Policy                                       |	Role-based Access Control                                    |
| ---------------- | --------------------------------------------------- | ------------------------------------------------------------- |
| Description      | Ensure resources are compliant with a set of rules. | Authorization system to provide fine-grained access controls. |
| Focus            | Focused on the properties of resources.             | Focused on what resources the users can access.               |
| Implementation   | Specify a set of rules.                             | Assign roles and scopes.                                      |
| Default access   | By default, rules are set to allow.                 | By default, all access is denied.                             |

<details>
<summary>Trust Center, Compliance Manager, Data Protection, Azure Security and Compliance, Blueprints</summary>

[Microsoft Trust Center](https://www.microsoft.com/en-ww/trust-center/product-overview)  
* In-depth information access tp FedRAMP, ISO, SOC audit reports, data protection white papers and different assessment reports
* Centralized resources around security, compliance and privacy

[Compliance Manager](https://compliance.microsoft.com/compliancemanager)   
* Manage compliance from a central location
* Proactive risk assessment
* Insights and recommended actions
* Prepare compliance reports for audit

[Data Protection Resources](https://servicetrust.microsoft.com/viewpage/trustdocuments)  
* Trust documents, GDPR, Compliance guides, Pen test and Security Assessment tests

[Azure Security and Compliance, Blueprints](https://servicetrust.microsoft.com/ViewPage/BlueprintOverview)
* Industry-specific overview and guidance
* Customer responsibilities matrix
* References architectures with threat models

</details>

## Cache

<details>
<summary>Cache. Patterns. Challenges. Info</summary>
  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/0cc64ad1-1953-4bbe-a74e-0fde6b950630)

### Cache consistency models
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/38914880-7807-4f1f-86b1-d8c98b580575)


</details>

### Cache Challenges
<details>
<summary>Cache. Challenges</summary>

![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/9351e134-fa8b-4f90-8642-6426233aed3b)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/c5983305-9eab-4fc7-b8fd-3d5912cebbfb)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/6763cb7e-d5f9-4610-a166-c563900affec)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/bab64673-a299-43d2-9d9d-4b2bc901b90d)
</details>

### Cache Replacement Policies
<details>
<summary>Cache. Cache Replacement Policies. Performance Metrics</summary>

### Cache Replacement Policies
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/4f2db3e1-9282-4c97-8578-85ca3c7c52be)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/6d3265ae-5941-4488-a29e-97ec14c0f082)

### Cache Performance Metrics
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/ae21e276-7f03-4a78-bfa7-ff4e4ecd5026)   
</details>

# Governance and Compliance materials
## Design Governance 

<details>
<summary>Lab. Microsoft Docs. Azure Blueprints. Additional Materials</summary>
    
Lab:   
https://docs.microsoft.com/en-us/learn/paths/design-identity-governance-monitor-solutions/  

Microsoft docs:  
https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/govern/guides/  
https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/govern/guides/standard/

### Azure blueprints

With Azure Blueprints, the relationship between the blueprint definition (what should be deployed) and the blueprint assignment (what was deployed) is preserved.   
  
In other words, Azure creates a record that associates a resource with the blueprint that defines it. This connection helps you track and audit your deployments. Azure Blueprints orchestrates the deployment of various resource templates and other artifacts.

![Blueprint](https://user-images.githubusercontent.com/4239376/161837081-9e32533c-0294-40fb-b711-54ff5c7d339f.png)

**How are Azure Blueprints different from Azure Policy**  
1.  A policy is a default allow and explicit deny system focused on resource properties during deployment and for already existing resources. It supports cloud governance by validating those resources within a subscription adhere to requirements and standards.

2.  A policy can be included as one of many artifacts in a blueprint definition. Including a policy in a blueprint enables the creation of the right pattern or design during assignment of the blueprint. The policy inclusion makes sure that only approved or expected changes can be made to the environment to protect ongoing compliance to the intent of the blueprint.

### Additional Materials
[Build a cloud governance strategy on Azure](https://docs.microsoft.com/en-us/learn/modules/build-cloud-governance-strategy-azure/)  
[Describe core Azure architectural components](https://docs.microsoft.com/en-us/learn/modules/azure-architecture-fundamentals/)  
[Microsoft Cloud Adoption Framework for Azure](https://docs.microsoft.com/en-us/learn/modules/microsoft-cloud-adoption-framework-for-azure/)  
[Intro to Azure blueprints](https://docs.microsoft.com/en-us/learn/modules/intro-to-azure-blueprints/)  

    
</details>


# Data materials
## Design for Data Storage
    
<details>
<summary>Azure SQL Server vs Azure SQL managed instance. Difference</summary>

    * Azure SQL Server vs Azure SQL Managed Instance, difference: [CHECK THIS LINK](https://medium.com/awesome-azure/azure-difference-between-azure-sql-database-and-azure-sql-managed-instance-sql-mi-2e61e4485a65)  
</details>
   
<details>
<summary>AKS. Persistent Volumes - Types of replication</summary>

    In Case of AKS:  
    
**Infrastructure-based asynchronous replication**  
* Your apps might require persistent storage. In Kubernetes, you can use persistent volumes to persist data storage. These persistent volumes are mounted to a node VM and then exposed to the pods. Typically, you provide a common storage point where apps write their data. This data is then replicated across regions and accessed locally, as displayed in the following graphic.  
![image](https://user-images.githubusercontent.com/4239376/162592090-a7dcaf19-4520-43a5-92a4-c432ced9e304.png)

**Application-based asynchronous replication**    
* Kubernetes currently provides no native implementation for application-based asynchronous replication. However, because containers and Kubernetes are loosely coupled, you should be able to use any traditional app or language approach to replicate storage.    
![image](https://user-images.githubusercontent.com/4239376/162592096-c469aebf-51ec-4b41-965e-36210c5c3f0a.png)  

**Consider Azure Backup or Velero**  
As with any app, it's important you back up the data related to your AKS clusters and their apps. When your apps consume and store data which is persisted on disks or in files, you should schedule frequent backups or take regular snapshots of that data. You can use several tools for these backup operations, including:   
* Azure Disks: Azure Disks can use built-in snapshot technologies. However, your apps might need to flush writes-to-disk before the snapshot operation.  
* Velero: Velero can back up persistent volumes along with additional cluster resources and configurations.  
</details>

## Design for Relational Data Storage

<details>
<summary>Business Critical Tier. General Purpose</summary>

* [General Purpose:](https://docs.microsoft.com/en-us/learn/modules/design-for-high-availability/6-recommend-solution-for-relational-data-storage)  
![image](https://user-images.githubusercontent.com/4239376/162592247-1a1165a2-bb1c-4b18-ab2b-ba5a70853f95.png)

* [Business Critical Tier:](https://docs.microsoft.com/en-us/learn/modules/design-for-high-availability/6-recommend-solution-for-relational-data-storage)  
The next service tier to consider is Business Critical, which can generally achieve the highest performance and availability of all Azure SQL service tiers (General Purpose, Hyperscale, Business Critical). Business Critical is meant for mission-critical applications that need low latency and minimal downtime.

![image](https://user-images.githubusercontent.com/4239376/162592250-d8011db7-7076-4b5d-8bf6-8f0cff7691fa.png)
</details>

### Azure SQL Types. Difference
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/fce7ecd9-66bc-4df3-863a-93686e0e739d)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/74378197-be59-4426-bea4-7c41799dd8a7)


### Azure SQL Data Replication types and strategies. Quorum and Leader-Follower patterns: Pros & Cons
<details>
<summary>Patterns used in Databases</summary>
    
* [Hyperscale](https://docs.microsoft.com/en-us/learn/modules/design-for-high-availability/6-recommend-solution-for-relational-data-storage)
The Hyperscale service tier is currently available for Azure SQL Database, and not Azure SQL Managed Instance. This service tier has a unique architecture because it uses a tiered layer of caches and page servers to expand the ability to quickly access database pages without having to access the data file directly.

![image](https://user-images.githubusercontent.com/4239376/162592288-e356d6d2-ce51-43c3-b242-3da051f5c880.png)

## Data Replication
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/c306100d-e8f6-47f9-8f1b-f31420af3fd8)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/4d65de3f-0829-48e4-aa43-c9f5a321fdad)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/3d9e75a3-bd08-4a40-9523-cf4f1797a4d7)


### Leader and Follower Pattern
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/f5a771f1-668c-4fb1-a54d-136b39833d4e)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/e17e4610-bb07-4e09-b498-cb6281da8abc)

### Quorum in Databases
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/3c98834f-004f-44b5-9b51-f408c888223c)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/22bb9681-579a-4f7b-8ebc-14e598b7f862)


### Active Geo-Replication
![image](https://user-images.githubusercontent.com/4239376/162592346-69027042-6b4c-4b2d-a5a5-4bc054f9394a.png)
Active geo-replication is available for:    
* Azure SQL Database: You can configure active geo-replication for any database in any elastic database pool.   
You can use active geo-replication to:   
* Create a readable secondary replica in a different region.  
* Fail over to a secondary database if your primary database fails or needs to be taken offline.  
    
</details>

### Data Retention in Azure SQL DBs (Managed Instance and SQL Server)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/214a6e53-802b-4663-8238-0b710694e25e)

### How to manage situations when you need data retention for more than 35 days
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/b029f8ee-b80c-4521-a3e7-e10e07b004ee)


## Design for Storage Accounts: File Share, Managed Disks (used by Azure VMs), Blob Storage
Materials are taken from this site: https://rajanieshkaushikk.com/2023/04/08/azure-blob-storage-vs-file-storage-vs-disk-storage-which-is-right-for-you/#:~:text=Azure%20File%20storage%20is%20not,low%20latency%20and%20high%20IOPS.
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/4a555864-c67f-471a-a454-0238c89d9cc1)

### Azure File Share vs Azure Managed Disks vs Blob Storage
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/c1ad2292-d3f7-45a1-a2fb-0ca3a0dc8772)  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/fda56485-cb27-48b3-9c3f-a91ab151859b)  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/d0778042-e19f-428c-9dc6-75329fb37c35)  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/5a877b8d-c64f-4bdd-9678-25007b8e9c58)  

## Design for Backups and Recovery
## Design Networking

### Traffic Manager
    
<details>
<summary>Traffic manager. General Info</summary>
    
![traffic manager](https://user-images.githubusercontent.com/4239376/162591418-4fbb911b-b8b7-4e92-b125-f5ce75e0514a.png)

**Failover scenarios:**  

![image](https://user-images.githubusercontent.com/4239376/162591580-754d5eb3-e634-4baa-8373-3af2109558a1.png)

* Manually, by using Azure DNS, this failover solution uses the standard DNS mechanism to fail over to your backup site. This option works best when used in conjunction with the cold standby or the pilot light approaches.

* Automatically, by using Traffic Manager, with more complex architectures and multiple sets of resources capable of performing the same function, you can configure Azure Traffic Manager (based on DNS). Traffic Manager checks the health of your resources and routes the traffic from the non-healthy resource to the healthy resource automatically.

## High Availability with Traffic Manager:
| Approach |	Description |
| -------- | ------------ |
| Active/Passive with cold standby	| Your VMs (and other appliances) that are running in the standby region aren't active until needed. However, your production environment is replicated to a different region. This approach is cost-effective but takes longer to undertake a complete failover. |
| Active/Passive with pilot light	| You establish the standby environment with a minimal configuration; it has only the necessary services running to support a minimal and critical set of apps. In its default form, this approach can only execute minimal functionality. However, it can scale up and spawn more services, as needed, to take more of the production load during a failover. |
| Active/Passive with warm standby | Your standby region is pre-warmed and is ready to take the base load. Auto scaling is on, and all the instances are up and running. This approach isn't scaled to take the full production load but is functional, and all services are up and running. |
    
</details>
    


# Messaging Systems. Messaging Patterns. Kafka
## Kafka. Kafka Basics. Kafka Cluster
<details>
<summary>Kafka Basics. Record. Topics. Consumers. Consumer Groups. Load Balancing. Compression and Batching</summary>
  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/f18025a6-8892-44f0-8362-6bdc7deb0136)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/1dd8e8cd-2621-4624-a197-5ffbd7858db9)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/4e75e7c6-a870-4965-b6cc-6672b4ac6d26)

### Consumers
    Consumers are the applications that subscribe to (read and process) data from Kafka topics. Consumers subscribe **to one or more topics** and consume published messages by pulling data from the brokers.
    
### Records
    A record is a message or an event that gets stored in Kafka. Essentially, it is the data that travels from producer to consumer through Kafka. A record contains a key, a value, a timestamp, and optional metadata headers.
    
### Consumer Groups. Consumer group can have multiple consumers that subscribe to the same topic, allowing the system to process messages in parallel.
    Consumer groups are a way to manage multiple consumers of a messaging system that work together to process messages from one or more topics.  
    Each consumer group ensures that all messages in the topic are processed, and each message is processed by only one consumer within the group.  
    This approach allows for parallel processing and load balancing among consumers.  
    For example, in Apache Kafka, a consumer group can have multiple consumers that subscribe to the same topic, allowing the system to process messages in parallel and distribute the workload evenly.
    
### Load Balancing in Kafka (balancing messages in partitions)
    Kafka uses a referred to as "sticky partitioning" to provide load balancing functionality.  
    This algorithm locks each message to a specific partition, and then distributes new messages to the next available partition in a round-robin fashion. This ensures that load is spread evenly across partitions and that remain balanced.
    
### Compression and Batching in Kafka
    Message batching is the process of combining multiple messages into a single batch before processing or transmitting them.  
    This approach can improve throughput and reduce the overhead of processing individual messages.  
      
    Compression, on the other hand, reduces the size of the messages, leading to less network bandwidth usage and faster transmission.  
    For example, Apache Kafka supports both batching and compression:  
    Producers can batch messages together, and the system can compress these batches using various compression algorithms like Snappy or Gzip, reducing the amount of data transmitted and improving overall performance.
</details>

<details>
<summary>Kafka Cluster. Zoo Keeper</summary>
    
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/0dc04362-209d-428e-abab-864cbcdd49ab)

### Kafka cluster
    Kafka is deployed as a cluster of one or more servers, where each server is responsible for running one Kafka broker.

### ZooKeeper
    ZooKeeper is a distributed key-value store and is used for coordination and storing configurations. It is highly optimized for reads.  
    Kafka uses ZooKeeper to coordinate between Kafka brokers; ZooKeeper maintains metadata information about the Kafka cluster.
    
</details>

<details>
<summary>Kafka vs RabbitMQ vs ActiveMQ vs Azure ServiceBus vs AWS SQS</summary>
 
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/5179792f-3706-4466-9352-3ea9dcd5d40e)

## Kafka vs ServiceBus
    
    Kafka is ideal for streaming data in an at-least-once manner and provides powerful features such as transmission of data over partitions, replication, and high-availability across multiple data centers.  
    It is optimized for large-scale data streaming and has built-in support for high throughput, low latency and scalability.   
      
    Azure Service Bus is used for messaging and not for streaming, and generally provides higher throughput and lower latency for scenarios where at-most-once messaging is required.    
    It supports mobile devices, and provides integration with other Azure services such as Azure Storage and Service Fabric.  
    
## Kafka vs AWS SQS
    Kafka is ideal for streaming data in an at-least-once manner and provides powerful features such as transmission of data over partitions, replication, and high-availability across multiple data centers.  
    It can be used to ingest data from multiple sources to multiple destinations and is optimized for large-scale streaming.  
  
    AWS SQS is not suitable for streaming and is used for message queuing scenarios where at-most-once delivery is required.  
    It supports mobile devices, and provides integration with other AWS services.  
</details>

## Patterns with Kafka and Other Services. Q&A
<details>
<summary>Messaging Patterns with Kafka. Point to Point. Pub-Sub. Request-Response.  Fan-Out/Fan-In (Scatter-Gather). Dead Letter Queue</summary>

### Patterns are not covered in images:
* Competing consumers
* Guaranteed delivery
* Content-based routing
* Routing slip
* Correlation identifier
* Routing by header
* Receiver-initiated workflow
* Routing using selectors
* Sagas
    
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/22c186b0-14c8-4f7e-b0ad-d8f94863264a)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/708b92ed-7a28-4dca-b11a-242e2cc94b84)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/33edc6cd-6628-4c1b-ba6b-57e63e886d7c)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/447416eb-216b-409a-865c-4d49221bbc03)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/550e3fc4-0166-4746-b806-ac19924c6e05)
    
### Q&A:
Which messaging pattern fits better for data stream processing?  
    The best messaging pattern for data stream processing is Publish/Subscribe. This pattern is typically used for passing data between applications, decoupling producers and consumers, and ensuring that messages are distributed to all interested parties in the system.
</details>

# System Design Interview. Low-level System Design Interview. High-level System Design Interview
## CAP Theorem. PACELC Theorem. Examples
<details>
<summary>CAP Theorem</summary>

  * Consistency ( C ): All nodes see the same data at the same time. This means users can read or write from/to any node in the system and will receive the same data. It is equivalent to having a single up-to-date copy of the data.  
  * Availability ( A ): Availability means every request received by a non-failing node in the system must result in a response. Even when severe network failures occur, every request must terminate. In simple terms, availability refers to a system's ability to remain accessible even if one or more nodes in the system go down.  
  * Partition tolerance ( P ): A partition is a communication break (or a network failure) between any two nodes in the system, i.e., both nodes are up but cannot communicate with each other.   
  A partition-tolerant system continues to operate even if there are partitions in the system. Such a system can sustain any network failure that does not result in the failure of the entire network.   
  Data is sufficiently replicated across combinations of nodes and networks to keep the system up through intermittent outages.   

  ![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/874112e7-9b85-47eb-af15-f9585c3817c4)
</details>

<details>
<summary>PACELC Theorem. General Info: ACID vs BASE. PACELC Theorem Examples</summary>

### General Info.
  * We cannot avoid partition in a distributed system, therefore, according to the CAP theorem, a distributed system should choose between consistency or availability.   
  * ACID (Atomicity, Consistency, Isolation, Durability) databases, such as RDBMSs like MySQL, Oracle, and Microsoft SQL Server, chose consistency (refuse response if it cannot check with peers), while BASE (Basically Available, Soft-state, Eventually consistent) databases, such as NoSQL databases like MongoDB, Cassandra, and Redis, chose availability (respond with local data without ensuring it is the latest with its peers).   

  ![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/b1dbbb7e-1290-4394-8e93-ff3516a0f0a4)  

### Examples
  * Dynamo and Cassandra are **PA/EL** systems: They choose availability over consistency when a partition occurs; otherwise, they choose lower latency.  
  * BigTable and HBase are **PC/EC** systems: They will always choose consistency, giving up availability and lower latency.  
  * MongoDB can be considered **PA/EC** (default configuration): MongoDB works in a primary/secondaries configuration. In the default configuration, all writes and reads are performed on the primary.  
  As all replication is done asynchronously (from primary to secondaries), when there is a network partition in which primary is lost or becomes isolated on the minority side, there is a chance of losing data that is unreplicated to secondaries, hence there is a loss of consistency during partitions.  
  Therefore it can be concluded that in the case of a network partition, MongoDB chooses availability, but otherwise guarantees consistency. Alternately, when MongoDB is configured to write on majority replicas and read from the primary, it could be categorized as **PC/EC**.  
</details>

## Consistent Hashing. Data Partitioning. Data Replication.  
![image](https://github.com/Glareone/AZ-304-305-SA-And-Architecture-Design-In-Depth/assets/4239376/f55f8513-f094-4efe-8056-57dde64e3906)  

Q: Where Consistent Hashing is used for Data Partitioning?   
A: Amazon's Dynamo and Apache Cassandra use Consistent Hashing to distribute and replicate data across nodes   
Q: In what other scenarios we may use Consistent Hashing for Data Servers?  
A: In the following scenarios:  
    `Any system working with a set of storage (or database) servers and needs to scale up or down based on the usage, e.g., the system could need more storage during Christmas because of high traffic.`  
    `Any distributed system that needs dynamic adjustment of its cache usage by adding or removing cache servers based on the traffic load.`  
    `Any system that wants to replicate its data shards to achieve high availability.`  

<details>
<summary> Data Partitioning. Data Replication. Naive approach</summary>

## Basics    
Data partitioning: It is the process of distributing data across a set of servers. It improves the scalability and performance of the system.  
Data replication: It is the process of making multiple copies of data and storing them on different servers. It improves the availability and durability of the data across the system.  
Data partition and replication strategies lie at the core of any distributed system. A carefully designed scheme for partitioning and replicating the data enhances the performance, availability, and reliability of the system and also defines how efficiently the system will be scaled and managed.  

## Naive Approach
1. How do we know on which node a particular piece of data will be stored?  
2. When we add or remove nodes, how do we know what data will be moved from existing nodes to the new nodes? Additionally, how can we minimize data movement when nodes join or leave?
 
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/f1e50841-52cb-4792-a49c-961c72faa78a)  
**PROS:**
1. Easy to create and understand  

**CONS:**  
1. Hard to add or delete node  
</details>

<details>
<summary>Consistent Hashing for Data Partitioning. Algorithm: MD5</summary>

## Problem statement
Distributed systems can use Consistent Hashing to distribute data across nodes. Consistent Hashing maps data to physical nodes and ensures that only a small set of keys move when servers are added or removed.  
Consistent Hashing stores the data managed by a distributed system in a ring. Each node in the ring is assigned a range of data.  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/c1cd0a4a-6b8e-42a0-9d5b-3d8bcfa3c60d)

## How consistent hashing may help us
Whenever the system needs to read or write data, the first step it performs is to apply the MD5 hashing algorithm to the key. The output of this hashing algorithm determines within which range the data lies and hence, on which node the data will be stored.  
hus, the hash generated from the key tells us the node where the data will be stored.  
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/366e22b7-f357-456f-abaa-88559345d608)  
**PROS:**  
1. When node added or deleted only limited amount of data is affected  
2. When node deleted the next node starts being responsible for all operations of removed node  

**CONS:**  
1. Each node in Consistent Hashing represents a real server. Therefore, it shows not great load distribution  
2. Works well only in homogenious systems. If you have different servers you cant balance them well  
3. High chance of hotspot issue (when one server uses more often than others)  
</details>

<details>
<summary>Consistent Hashing. Virtual Nodes</summary>

![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/bfaad995-a62e-4ae4-9783-e171d7d51ba9)  
**PROS:**  
1. The load spreads more evenly across the physical nodes on the cluster by dividing the hash ranges into smaller subranges, this speeds up the rebalancing process after adding or removing nodes    
2. When a new node is added, it receives many Vnodes from the existing nodes to maintain a balanced cluster  
3. Many nodes participate in the rebuild process when a node needs to be rebuilt  
4. It's easier to maintain the data cluster if it consists of different machines (heterogenious servers). More powerful machines may have more Vnodes than others  

</details>

<details>
<summary>Consistent Hashing. Data Replication using Consistent Hashing</summary>

![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/2f591809-428a-4898-a9c2-5b08ae79378f)
</details>

## System Design Interview: General Rules. Step by Step guide

<details>
<summary>Step by Step guide by Design Gurus. 3 Steps: Clarify Requirements, Expectations & Estimations, System interface definition</summary>

 ### Clarify Requirements
 1) Ask questions about problems you are trying to solve; Design questions on interview are open-ended  
    a) It has not ONE correct answer. You must clarify ambiguities  
    b) Need to know on which aspects you must focus  

Question examples:  
* Will users of our service be able to post tweets and follow other people?  
* Should we also design to create and display the user's timeline?  
* Will tweets contain photos and videos?  
* Are we focusing on the backend only, or are we developing the front-end too?  
* Will users be able to search tweets?  
* Do we need to display hot trending topics?  
* Will there be any push notification for new (or important) tweets?  

### Define API Interface
* Define what APIs are expected from the system. This will establish the exact contract expected from the system and ensure if we haven't gotten any requirements wrong. Some examples of APIs for our Twitter-like service will be:  
`postTweet(user_id, tweet_data, tweet_location, user_location, timestamp, …)`
`generateTimeline(user_id, current_time, user_location, …)`
`markTweetFavorite(user_id, tweet_id, timestamp, …)`
</details>

<details>
<summary>Step by Step guide by Design Gurus. Next 4 Steps: Define data model, Degine Database Type, High-level design</summary>

### Defining Data Model
* Defining the data model in the early part of the interview will clarify how data will flow between different system components. Later, it will guide for data partitioning and management.  
* The candidate should identify various system entities, how they will interact with each other, and different aspects of data management like storage, transportation, encryption, etc. Here are some entities for our Twitter-like service:  

  `User`: UserID, Name, Email, DoB, CreationDate, LastLogin, etc.  
  `Tweet`: TweetID, Content, TweetLocation, NumberOfLikes, TimeStamp, etc.  
  `UserFollow`: UserID1, UserID2  
  `FavoriteTweets`: UserID, TweetID, TimeStamp  

### Defining Database Type  
Which database system should we use? Will **NoSQL** like **Cassandra** best fit our needs, or should we use a **SQL-like** solution? What kind of block storage should we use to store photos and videos?  

Questions here:  
    1) Do we need to be ACID-compliant?  
    2) Do we need to support Strong Data Consistency and Transactions?  
    3) What data structure do we have?  
    4) Amount of Read\Write operations?  
In case of Tweeter the answer is possible NoSQL, we can sacrifice Strong Consistency over Availability (Low Latency).   
In terms of type we need to estimate the balance between read and write operations. Potentially, we read more often. So, it's a NO for Cassandra and probably it's better to go with MongoDB.  

PS: If we are choosing among native NoSQL solutions, for DynamoDB there is only one good DB pattern named "One Big Table". Lots of patterns eventually say you to go with One Big Table: [https://www.alexdebrie.com/posts/dynamodb-single-table/](https://www.alexdebrie.com/posts/dynamodb-single-table/)   

### High-Level Design
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/7d7490ea-c3da-4a68-b87b-fbb8236ea58d)
* Draw a block diagram with 5-6 boxes representing the core components of our system. We should identify enough components that are needed to solve the actual problem from end to end.    
* For Twitter, at a high level, we will need multiple application servers to serve all the read/write requests with load balancers in front of them for traffic distributions.  
If we're assuming that we will have a lot more read traffic (compared to write), we can decide to have separate servers to handle these scenarios. On the back-end, we need an efficient database that can store all the tweets and support a large number of reads. We will also need a distributed file storage system for storing photos and videos.  

</details>

<details>
<summary>Step by Step guide by Design Gurus. Last Step: Low-Level Design with details. Identify Bottlenecks</summary>

![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/48addba2-0e57-4448-8c32-6690ace968de)
</details>
