## MLOps. Design - Model Development - Operations.
* Before diving into MLOps Interview it's important to understand what exactly we are trying to build, what the complexity, etc.
* Like anywhere else we have to start from the Functional - Non-functional - Constraints.

---
### Functional Requirements
1. **Business Context & Use Case Clarity**:
   - What specific AI/ML problem are we solving? It could be **NLP** (chatbots, sentiment analysis, document analysis) , **Computer Vision**, **Recommendation System**, **ERP** decision making systems?
   - What is the expected model output format (text, json, xml)?
   - What is the downstream consumption?
   - Are we building a single-purpose model and its MLOps or a multi-tenant ML platform?
   - What is the decision-making process for model selection vs fine-tuning vs building from scratch?

2. **Model Lifecycle & Operations**:
   - A/B testing (Benchmarking) capabilities for model comparison?
   - Rollback strategy when the new model performs poorly?
   - Model versioning?
   - Model performance metrics which may trigger retraining?

### Non-Functional Requirements
1. Performance & Scalability:
   - Target latency requirements? (real-time vs batching)
      * Real-time inference: 1-200ms response. Usually for chatbots and recommendation engines.
      * Near real-time: 100ms - 2s. Acceptable for fraud detection, content moderation.
      * Batch processing: Minutes - hours (daily reports, bulk data processing)
   - Model **size** constraints. Edge (mobile) deployment vs Cloud-based?
2. Security & Compliance:
   - Data **residency** requirements (GDPR, HIPAA, separate industry-specific regulations)?
   - **Model explainability** and **audit trail**: The ability to understand and explain why a model made a specific decision or prediction?
   - **Access control** and authentication mechanisms to model?
   - **Data encryption** at-rest and in-transit requirements?
3. Operational Excellence:
   - Monitoring and alerting thresholds?
   - DR: Disaster recovery and business continuity requirements?
   - SLA commitments, model & MLOps Service availability?
   - Integration patterns with existing enterprise systems?

### Constraints
1. Allocation:
   - GPU/compute resource allocation strategy? (On-premises vs Separate provider)? `This constraint fundamentally changes our architecture - on-premises means we manage Kubernetes clusters and GPU scheduling, cloud means we optimize for cost and vendor lock-in`
2. Existing Technology Landscape:
   - Integration with legacy systems? `Are we building greenfield or brownfield? Do we have existing data pipelines, security frameworks, and enterprise tools? This heavily influence our MLOps platform choice`
3. Team Maturity:
   - ML expertise level determines build vs. buy decisions. `If team has strong Kubernetes skills we could choose choose Kubeflow, otherwise if team is new to ML we might consider fully managed solutions like SageMaker, Bedrock, HuggingFace, or Azure AI Foundry`
       * SageMaker vs Bedrock. `Amazon Bedrock and Amazon SageMaker AI are optimized for different levels of machine learning expertise. Amazon Bedrock is more accessible to a broader range of users, including developers and businesses with limited machine learning expertise.` 
4. Time to Market:
   - Proof-of-concept vs. production-ready timelines. `3-month deadline means managed services and pre-trained models; 18-month timeline allows for custom fine-tuning and specialized infrastructure`.
5. Data Constraints:
   - **Data volume** and velocity: Streaming vs. batch data ingestion capabilities?
   - **Data quality** and **labeling**: Do we have clean, labeled datasets or need data preparation pipelines?
   - Data location and movement: Cross-region data transfer costs and latency?
