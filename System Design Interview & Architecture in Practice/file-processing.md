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
