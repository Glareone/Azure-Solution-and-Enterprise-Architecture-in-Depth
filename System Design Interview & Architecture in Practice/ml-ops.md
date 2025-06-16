## MLOps. Design - Model Development - Operations.
### Glossary

### MLFlow Components
ML lifecycle management platform with four main components:
1. MLflow Tracking
   * Logs experiments, parameters, metrics, and artifacts
   * Tracks model performance across different runs
   * Compares experiments and hyperparameter tuning results

```python
import mlflow
mlflow.log_param("learning_rate", 0.01)
mlflow.log_metric("accuracy", 0.85)
mlflow.log_model(model, "my_model")
```

2. MLflow Models. Model packaging and serving
   * Standardizes model packaging format
   * Create Docker containers, but that's just one deployment option
   * Supports multiple serving options: REST API, batch, cloud platforms

3. MLflow Model Registry
   * Centralized model store with versioning
   * Manages model lifecycle (staging → production → archived)
   * Stores model metadata and lineage

4. MLflow Projects. Environment and entry points for training
   * Packages ML code in reusable, reproducible format
   * Defines environment and entry points for training
   * Can run locally, on cloud, or in containers

MLflow DOES:
* Experiment tracking: Logs training runs, parameters, metrics
* Model packaging: Creates standardized model format
* Model registry: Versions and manages model lifecycle
* Model serving: Simple model deployment (REST APIs)
* Project packaging: Makes ML code reproducible
---
### First things first
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
**Minimal Viable MLOps:**
```
Data Preparation
├── API Calls
├── Response Logging
└── Basic Monitoring
```

**Needs and desires:**  
1. Unified platform - combines model catalog, fine-tuning, and deployment
2. Multiple model access - GPT-4, Llama, Phi, and other models in one place
3. Managed fine-tuning - can fine-tune without infrastructure management
4. Built-in MLOps - model registry, versioning, deployment built-in

**No need for:**  
1. Complex model registries
2. CI/CD pipelines for models
3. Advanced monitoring and drift detection
4. Multi-environment deployments
5. MLOps Features out of the box:
   * Model registry and versioning
   * Automated deployment pipelines
   * Built-in monitoring and logging
   * Integration with Azure DevOps
   * Cost tracking and optimization

**Recommended Platform Hierarchy**  
**Tier 1 (Fastest Time to Market):** 
1. Azure OpenAI Service (if Azure Expertise prevails over AWS)
2. AWS Bedrock
3. Azure AI Foundry
4. Google Vertex AI (PaLM/Gemini)

**Tier 2 (Slightly more setup):**
1. HuggingFace Inference Endpoints
2. OpenAI API directly

**Tier 3 (Avoid for this timeline):**
1. SageMaker (too much setup overhead, need to be very accurate what exact needs you need to serve)
2. Custom fine-tuning infrastructure
3. MLflow or complex MLOps pipelines

---
### Scenario 1. Mid Size project, GenAI, 12 Month timeline
**Prerequisites:**  
1. Project Scale: Medium-sized project with moderate complexity
2. Timeline: 12-month delivery schedule
3. Scope: Build MLOps infrastructure specifically for this project, with a reusable foundation that can support future initiatives
4. Model Strategy: Focus on GenAI solutions using either established models (GPT, Claude) or open-source models (Llama) with fine-tuning capabilities
5. Infrastructure Preference: Limited fine-tuning expertise available, so we prioritize rapid deployment using managed services over on-premises GPU infrastructure
6. Compliance Requirements: GDPR compliance mandatory due to European client base, requiring data residency within EU boundaries
7. Financial Model: Operational expenditure (OpEx) preferred over capital expenditure (CapEx)

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

**In case of Scenario 1 MLflow would handle:**
1. Tracking fine-tuning experiments with different Llama configurations
2. Storing model artifacts and performance metrics
3. Managing model versions (v1.0 → v1.1 → v2.0)
4. Simple model serving for testing

**You'd still need:**
1. Git: For your training scripts and serving code
2. Container Registry (ACR/ECR): For production container images
3. Orchestration platform: For production deployment and monitoring


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
