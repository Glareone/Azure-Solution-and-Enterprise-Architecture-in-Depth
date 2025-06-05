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



