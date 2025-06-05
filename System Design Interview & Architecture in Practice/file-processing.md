## File Processing Mechanisms
1. Long and Short massive file processing mechanisms. Processing Strategies Comparison
Nowadays there are a lot of different tools and approaches how to process things using massive-parallel-processing. It's important to consider different approaches:
  * Fan-Out, functions, and messaging.
  * Hadoop.
  * Databricks.
  * Azure Data Factory (low-code no-code approach).

2. Storage Consideration. ETL vs ELT.
  * Target document Storage purity
  *  Information Fullness.

---
### Functional and Non-Functional Requirements. Constraints.
1.  Functional Requirements
  * Document Ingestion: Support multiple file formats (.PDF with images and .DOC)
  * Content Extraction: Text, metadata, images, tables, structured data
  * Document Classification: Categorize documents by type, content, sensitivity
  * OCR Processing: Extract text from image-based documents
  * AI/ML Integration: NLP processing, entity extraction, sentiment analysis
  * Search & Indexing: Full-text search, semantic search capabilities
  * Workflow Management: Document approval, routing, status tracking
  * API Access: RESTful APIs for integration with other systems
2. Non-Functional Requirements
  * Scalability: Handle 10K-1M+ documents per day
3. Performance:
  * Small files (<5MB): <20 seconds processing
  * Large files (>100MB): <5 minutes processing. Lets say we use default message limiting
  * Batch processing: 500+ files/min
  * Availability: 99.9% uptime, fault tolerance
  * Security: Encryption at rest/transit, access controls, audit logging

Constraints:
1. Compliance: GDPR. Data Should reside in the selected Country.
2. Cost Optimization: Processing should be cost-effective, but after making main the processing work.

-----
High Level overview on Options.

-----
### A. Fan-Out with Functions & Messaging  
Architecture Pattern:
Document --FAN-OUT--> Message Queue ---> Multiple Lambda/Functions --FAN-IN--> Results Aggregation

PROS: Well known, it's technology lock

CONS: 
1. Potential Technological lock.
2. Hard to build "Aggregation Function" in distributed systems


### Implementation Options.
1. EventFlow. EventBridge + Aggregator
![image](https://github.com/user-attachments/assets/542ff67c-0f3e-4a91-9ea5-33b168083945)

2. Message Attributes with SQS FIFO \ Azure ServiceBus Message Sessions
![image](https://github.com/user-attachments/assets/658fa252-46fd-4f97-8948-619c7532553f)

3. Hybrid Event Sourcing

Idea: Instead of storing ONLY events (like pure Event Sourcing), you store both current state AND events.

PROS:
1. No Complex Projections
  - Pure ES: Must maintain multiple read models
  - Hybrid: Query current state directly

2. Easier Debugging
  - Pure ES: "What's the current state?" → Replay events
  - Hybrid: "What's the current state?" → Check the table

Real-World Example: File Management System

4. Event Sourcing  
![image](https://github.com/user-attachments/assets/a22c6bfd-e561-4580-93a9-8ee76d1eac95)

#### Recommended Per Scenario:
1. SQS FIFO. Start Simple.
* Use SQS FIFO for ordered processing
* Simple Lambda aggregator
* DynamoDB / S3 for state tracking
* Perfect for MVP and small-medium scale  
  
2. EventBridge: Scale Up.

* Migrate to EventBridge for better decoupling
* Add multiple event consumers
* Implement retry and DLQ patterns
* Support for complex routing

3. Hybrid Event Sourcing.
* Much easier than pure Event Sourcing but still scalable
* Supports different combinations and implementations
* Performance: Fast queries on current state
* Simpler Mental Model (Developers understand tables, No complex event replay logic)

4. Event Sourcing. Complex Enterprise Solution.

* Full event sourcing for audit trails
* CQRS patterns for read/write separation
* Multiple projections for different views
* Support for time travel and replay

Comparison
| Pattern | Complexity | Consistency | Scalability  | Cost | Use Case | 
| -- | -- | --| -- | -- | -- |
| EventBridge + Lambda | Medium | Eventual | High | Medium | General purpose, loose coupling | 
| SQS FIFO + Attributes | Low | Strong | Medium | Low | Simple aggregation, cost-sensitive   |
| Event Sourcing | High | Strong | Very High | High | Complex business logic, audit trails   |


### Why Event-Driven is Superior for the Large Scale:

1. Loose Coupling: Each component only knows about events, not other components
2. Fault Tolerance: Failed chunks can be retried without affecting others.
3. Scalability: Easy to add new event consumers or processing logic
4. Ability To restart failed operations without necessity to restart the whole flow (which is usually very useful) 
5. Observability: Complete audit trail of all operations
6. AWS Native: Leverages managed services optimally.

-----
### B. Hadoop Ecosystem
Architecture Pattern:
HDFS Storage → MapReduce/Spark Jobs → Distributed Processing → Results to Data Lake

PROS:
1. Suitable for massive processing

CONS: 
1. high price,
2. acute learning curve,
3. big compute overhead,
4. not near-realtime processing.

-----
### C. Databricks Platform**  
Architecture Pattern:
Delta Lake → Spark Clusters → ML Pipelines → Collaborative Notebooks

PROS:
1. MPP (Massive Parallel Processing with ability to restart the little piece of work)
2. Well Known technology which is based on Apache Spark.
3. Ability to build complex processing systems
4. Suitable for massive parallel processing
5. Better than Hadoop for document processing

CONS:
1. Not really suitable for small file processings
2. Steep Learning Curve
