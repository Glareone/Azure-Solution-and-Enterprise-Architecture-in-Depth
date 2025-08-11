# Recommendation System using ML and AI. Travel-Centric System
---
### Business Case
* We want to build a product specializing in global travel search services.  
* The platform should integrate marketplace navigation tools with direct service features, allowing users to explore, compare, and book international and domestic travel options seamlessly. 
* By aggregating data from numerous airlines, travel agents, and accommodation providers, the platform offers real-time pricing and availability.  
* Its user-friendly interface and versatile planning capabilities have made it a popular choice for millions of users worldwide, especially across European and Asian markets.
---
### Functional Requirements. Probing.
1. Personalization depth: Historical bookings, browsing behavior, demographic preferences
2. Real-time vs batch:
   - track Price changes
   - availability updates
   - seasonal adjustments
3. Multi-modal recommendations: Flights + Hotels + Activities bundling
4. Geographic scope: Domestic vs international, visa requirements, travel restrictions

### Non-functional Requirements:
1. Latency: <200ms for initial results, <2s for personalized ranking.
2. Availability: 99.9% uptime (travel is time-sensitive)
3. Scale: Peak traffic during holiday booking seasons (3-5x normal load)
4. Data freshness: Pricing updates every 15-30 minutes, availability real-time

### Splitting the task onto 2. Recommendation System & Travel-Centric System
---
### Recommendation System. Batch Pipeline & Fetch Pipeline
<img width="3579" height="1117" alt="image" src="https://github.com/user-attachments/assets/b689ed25-17d2-4a45-90f1-06fe896357e0" />
<img width="2933" height="1363" alt="image" src="https://github.com/user-attachments/assets/9410e739-d1a9-41c1-9257-350f198c0d84" />

---
### Batch Processing Pipeline.
### Ranking the information
Theoretical Part: [CLICK HERE](https://github.com/Glareone/AI-LLM-RAG-best-practices/blob/main/advanced-topics/Advanced%20Retrieval%20&%20Re-ranking.md)  

Practical: 
<img width="669" height="939" alt="image" src="https://github.com/user-attachments/assets/3bc7d994-b6f5-45d2-8248-5244d92aaa48" />
1. WIP. ML PREDICTION MODEL
2. CONVERSION
---
