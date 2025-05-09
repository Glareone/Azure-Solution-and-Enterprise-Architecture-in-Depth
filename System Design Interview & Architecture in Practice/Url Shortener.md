# URL Shortener
Here is a link to Miro: https://miro.com/app/board/uXjVMzmvKEQ=/?moveToWidget=3458764560014074766&cot=14

## Important moments to be touched during interview:
### ID generator options: 
1) Universal Unique ID (PROS and Cons)
2) Multi-Master ID generation
<img width="996" alt="image" src="https://github.com/user-attachments/assets/b8a6ff82-bc74-4899-b125-6319003c1446" />


3) Ticket Server (Bottleneck and one point of failure)
  <img width="991" alt="image" src="https://github.com/user-attachments/assets/de08159d-6010-4e9e-b10c-5ed079aa37a2" />

4) Twitter SnowFlake (combined UID with `timestamp-datacenterId-machineId-incrementalRequestIdInThisMilisecond`)
<img width="1020" alt="image" src="https://github.com/user-attachments/assets/0d68da23-44e6-4c40-a11b-b1c9371fff62" />

### Redirect options:
1) 301 Constant Redirect: browser caches this and next time will redirect you immediately
2) 302 Temporary Redirect: browser caches it for the short period of time. Useful for visit analytics

### Hash function vs Base62 (UID -> shortUrl transformer)

## Questions and answers from Product owners
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/331533a0-29e5-4628-b706-3ae02d502f0a)


## Functional and Non-Functional attributes (Constraints & QA) of the system
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/554035c8-4cd5-4c4a-b7c0-959ae5643e6a)


## API. Endpoints. Protection. Throughput
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/0e236708-8c5a-4867-847a-844d216a7d30)


## Database rationale. Database Organization. Storage Estimation
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/2e38a237-51ec-4533-b1c8-dd565b8cb376)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/eeef3668-8500-4d25-8ff9-6e009d34a1de)

## Cache Estimation
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/35744085-de52-4d45-a62f-d124ac230db9)

## Traffic & Bandwidth Estimation
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/95c52cb7-4a1b-4fbf-a863-41dca380028f)

---
### High-level System Design
#### Approach with Database
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/da4d6b39-db6f-4f03-9efa-cc5383d56633)

#### Approach with random string generator (Meta Snowflake)  
1. Generate Unique IDs: Use Snowflake or a similar system to generate a unique 64-bit ID for each URL submitted by users. Each ID will be globally unique due to the combination of timestamp, datacenter ID, machine ID, and sequence number.

2. Convert IDs to URL-friendly Format: Since each Snowflake ID is 64 bits, you can encode this ID into a shorter, URL-friendly string. Using base62 encoding (characters 0-9, a-z, A-Z) is a common approach as it allows you to represent a large number in a compact form. Here's how the conversion typically works:

3. Example of Snowflake ID to Short URL Conversion:
Given a Snowflake ID like 'DATACENTER-ID''GENERATOR-SERVICE-ID''TIMESTAMP''NUMBER-OF-GENERATED' 521504606222354432, you would convert this to a base62 string, which might look something like 7FlmR3s. This string is then used as the path in your TinyURL, such as https://tinyurl.com/7FlmR3s.

### Appoach with Database and Queue. Using messaging + DynamoDB for generating unique IDs and storing mappings
**PROS:**
1. High throughput and scalability: DynamoDB is highly scalable: It can handle a large number of write operations due to its distributed storage model. With proper partitioning and sharding, you can scale horizontally to meet your traffic needs.
2. Messaging systems decouple producers and consumers: By using a messaging queue, you can decouple the URL creation process (producer) from the actual writing to the database (consumer). This ensures smooth processing even under high loads, as producers can continue without blocking.
3. Simplified design with sharding: DynamoDB automatically shards data based on partition keys. You can design your system to shard short URL mappings (e.g., using hashed keys) to distribute the load across partitions, ensuring high availability and minimizing contention. No need to manage distributed ID generation logic manually, as DynamoDB handles the scaling and partitioning.
4. Event-driven architecture:
Messaging systems (e.g., Kafka, RabbitMQ, AWS SQS) allow you to process requests asynchronously, enabling near-real-time URL creation without blocking the main application flow. This adds resilience, as the processing can be retried in case of temporary failures.
5. Ease of integration with cloud services:
DynamoDB integrates seamlessly with AWS services like SQS, SNS, Lambda, and CloudWatch, making it easy to set up and monitor the system. This simplifies the operational aspect of the design, especially if your system is already hosted on AWS.
6. Guaranteed delivery and retry mechanisms in messaging systems: Messaging systems typically provide retry and durability guarantees for messages. Even if a consumer fails temporarily, the message remains in the queue and can be retried later.
7. High availability and durability: DynamoDB is designed for fault tolerance and durability, as it replicates data across multiple nodes and availability zones. This makes it well-suited for systems requiring high availability and consistent performance.
8. Simple scaling model: Dynamically adjust the read/write capacity of DynamoDB based on demand. Combined with messaging systems, this approach can handle significant traffic spikes without redesigning the system.

**CONS:**
1. Latency in retries: In case of failures (e.g., DynamoDB throttling or consumer failures), retries from the messaging system can introduce latency, which affects the user experience. While retries ensure durability, they also delay processing.
2. Sharding design requires careful thought:
While DynamoDB supports automatic sharding, designing a proper partition key for uniform data distribution is critical. Poor sharding strategies (e.g., using sequential keys or poorly hashed values) can lead to uneven load distribution and degraded performance.
3. Complexity in message queue management: While the underlying system can handle high throughput, adding a messaging queue introduces complexity in the architecture. You need to manage topics, partitions, message delivery guarantees, retries, and monitoring the queue, especially as your system scales.
4. Eventual consistency: Asynchronous processing with messaging means you don't immediately store the mapping in DynamoDB after generating the URL. This introduces a delay (eventual consistency) between URL creation and the record being stored, which might be unacceptable for real-time requirements.
5. Cost considerations: DynamoDB, especially with high write capacity and frequent updates, can become expensive at scale. Combining DynamoDB with messaging systems adds operational costs for managing and scaling queues and consumers. AWS services like DynamoDB and SQS have pricing based on usage (read/write capacity, data storage, and queue operations), which could increase costs significantly for high-throughput systems.
6. Potential for "hot partitions" in DynamoDB: If partition keys (e.g., hashed keys) are not evenly distributed, you may encounter "hot partitions" in DynamoDB, where some partitions receive disproportionate traffic. This can degrade performance unless the sharding logic is carefully designed.
7. Increased operational overhead: Combining DynamoDB with messaging requires monitoring multiple components, including the database throughput, queue health, and consumer failures. This increases operational complexity and may require dedicated tooling or dashboards for observability.
8. Lack of ordering guarantees: Messaging systems may not guarantee strict ordering of messages (depending on the queue and configuration), which can complicate certain workflows (e.g., if timestamps for URL creation are important).

### Approach with generate-on-the-fly
This approach is about generating a hash code using a known algorithm, for instance, MD5 or SHA-256.

PROS:
1. If collisions are acceptable - it might be a good solution: Hash-based generation is quick and easy to implement when collisions are rare or acceptable in the use case. For example, if the system generates a hash for each URL and performs a collision check before storing it, this can work well for moderate-scale systems.
2. Simple design: The system generates a unique string (hash) and stores it in the database. This avoids complex distributed coordination for ID generation (like Snowflake) or relying on database-managed sequences. The simplicity of hashing makes this approach suitable for small systems or where high throughput is not critical.
3. Deterministic: Since MD5 or SHA-based hashes are deterministic, the same input will always produce the same output. This can make caching or re-creating short URLs for identical input URLs straightforward.

CONS:
1. Potential collisions: While MD5 and SHA-256 are robust algorithms, truncating their output to meet the short URL character limit (e.g., 6-8 characters) increases the risk of collisions. Without proper collision handling, different input URLs could generate the same hash, resulting in problems in the system.
2. Performance overhead for collision handling: To mitigate the risk of collisions, the system must check whether a hash already exists in the database. If a collision occurs, the system must re-generate the hash (e.g., using a salt or randomization) or choose a fallback mechanism. This adds complexity and potentially increases latency during URL creation.
3. Non-sortable IDs: Hash-based IDs (e.g., MD5 or SHA) do not provide sortable IDs based on time or other criteria. This may make certain operations, such as debugging or analytics, more difficult compared to approaches like Snowflake, which generate time-ordered IDs.
4. Storage overhead: Hashes like MD5 generate relatively long strings (32 characters for full MD5, or about 22 characters when truncated in base62 encoding). Truncating further to match TinyURL-like requirements (6-8 characters) increases collision probability. You must balance hash length with acceptable collision risk.

#### COMPARISON
| Approach | Uniqueness | Scalability | Throughput | Complexity | Cost | Consistency |
| :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| Snowflake | High | High | High | Medium | Medium | Strong |
| DB-level generation | High | Limited (Centralized) | Medium | Low | Low | Strong |
| Hash-based (MD5) | Medium (collision risk) | Medium (collision handling) | High | Low | Low | Strong |
| Messaging + DynamoDB | High | High (distributed) | Very High | High | High | Eventual |

---
### Low-level System Design
