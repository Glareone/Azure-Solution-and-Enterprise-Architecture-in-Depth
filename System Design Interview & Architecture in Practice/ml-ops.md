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
2. Security:
   - **Model explainability** and **audit trail**: The ability to understand and explain why a model made a specific decision or prediction?
   - **Access control** and authentication mechanisms to model?
   - **Data encryption** at-rest and in-transit requirements?
3. Operational Excellence:
   - Monitoring and alerting thresholds?
   - DR: Disaster recovery and business continuity requirements?
   - SLA commitments, model & MLOps Service availability?
   - Integration patterns with existing enterprise systems?

### Constraints
![image](https://github.com/user-attachments/assets/67f4aa11-0725-4fa5-84c7-ac9d8524c95b)
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
6. Regulatory & Data Compliance:
   - Data **residency** requirements (GDPR, HIPAA, separate industry-specific regulations)?  
7. Budget/Cost Constraints:
   - CapEx vs OpEx.
   - Cost predictability: Fixed monthly costs vs. variable usage-based pricing?
   - ROI Return-Of-Investments timeline: When must the solution pay for itself?

---
### Scenario 0. Small-scale project, GenAI, short timeline (3-6 month)

---
### Scenario 1. Mid Size project, GenAI, 12 Month timeline
**Prerequisites:**  
1. Medium size project.
2. 12 month timeline.
3. We only want to train milliops of ops for this project, but with the ability to reuse the foundation for others.
4. We are currently only focused on GenAI, so we prefer to train either established models or open source models like Llama.
5. There are limited options for fine-tuning, so we prefer to get up and running quickly rather than hosting everything on-premises and running on our own GPUs.
6. Compliance: Let's say we want to be GDPR compliant because the client is in Europe, so data location matters.
7. Costs: Opex over Capex.

**Basic Principles:**  
![image](https://github.com/user-attachments/assets/6b774114-6ed7-4dec-a44d-35f2ee47c2b7)


**Platform Selection**  
Primary choice here whould be based on Cloud Stack in the company and ability to incorporate the Public Cloud Provider: AWS or Azure. 
1. Primary Choice: AWS Bedrock + EU Regions. Ability to utilize SageMaker in extra scenarios.
  - Rationale: GDPR compliance through eu-west-1/eu-central-1, managed fine-tuning, OpEx model
  - Models available: Claude, Llama 2/3, Titan, Cohere
  - Fine-tuning: Managed service, not necessary to manage GPUs on your own
2. Alternative: Azure OpenAI Service (EU regions)
  - Rationale: Azure expertise, GDPR-compliant regions
  - Models: GPT-4, GPT-3.5, plus planned Llama integration
  - Benefit: Faster implementation using Azure OpenAI Service + Azure AI Foundry

**Data & Feature Management**  
1. AWS S3 (eu-central-1) or Azure Storage Account or Azure Data Lake: GDPR-compliant data storages with different accesses, API\SDK and Hadoop.
2. Feature stores:
   - AWS S3 supports feature store integration with SageMaker and could play Knowledge base for Bedrock
   - Azure Data Lake supports integration into AI Machine Learning Studio.
   - Azure Storage Account supports integration with AI Foundry and could be a part of your RAG solutions
3. S3 & Storage Account support versioning

**Model Development & Training**  
1. Managed fine-tuning: Bedrock Custom Models, Azure OpenAI fine-tuning, Azure AI Foundry fine-tuning
2. Experimentation: AWS SageMaker Studio, Azure ML Studio, Azure AI Foundry studio
3. MLflow Model Deployment: Model Artifacts + Serving Code -> Docker Image (ACR/ECR) -> Deployment
4. MLflow Model Registry & Version control. Purpose: Manages ML model artifacts, metadata, and lifecycle
What it stores. **Idea: Code (Git) -> Training -> Model Artifacts (MLflow Registry)**
   - Serialized model files (pickle, ONNX, PyTorch, etc.)
   - Model metadata (accuracy, parameters, training data lineage)
   - Model versions and stages (staging, production, archived)
5. Model versioning: Platform-native model registry for artifacts and metadata
6. Container versioning: ACR/ECR for deployment-ready images
7. Data versioning: DVC or platform-native data versioning
```
Git (Code) 
├── MLflow/Platform (Experiments & Model Artifacts)
└── ACR/ECR (Serving Container Images)
    └── Kubernetes/Container Service (Deployment)
```
