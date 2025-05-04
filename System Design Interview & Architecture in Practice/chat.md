# Chat
## Interesting and Common ideas found in different books

This is the case for group chats with up to 500 users. Like in WeChat.  
For Larger Chats you have to take into account other trade-offs.  
## Messaging between users
![IMAGE 2025-01-14 22:39:32](https://github.com/user-attachments/assets/ca2eaaf7-6760-4faf-bcf0-c98da02301ba)

----
### Message syncronization between devices
![IMAGE 2025-01-14 22:39:39](https://github.com/user-attachments/assets/4ba7d4dd-fa57-4e58-895d-d6bfcced71be)

----
### Group chat
![image](https://github.com/user-attachments/assets/007734ea-1563-4389-8a54-976b00c93a31)
![IMAGE 2025-01-14 22:39:44](https://github.com/user-attachments/assets/ee494061-0d72-436c-9fad-7bbf4b66928e)

**Pub/Sub and Message Delivery Guarantees:**  
Message delivery guarantees in a chat application.  
"At Most Once" Delivery: This means messages can be lost (not delivered) but will never be delivered more than once. This is generally not acceptable for a chat application.

Kafka's Defaults: By default, Kafka offers "at-least-once" delivery for topics, where messages can be delivered multiple times but are guaranteed to be delivered at least once. 
This is usually a better starting point for chat but requires handling potential message duplication on the consumer side.  

### Ensuring Group Chat Consistency with Pub/Sub:

Here are key strategies to ensure message consistency and reliability in a chat system built on pub/sub:

"Effectively Once" Delivery (Ideal): This guarantees that messages are delivered exactly once. Achieving this often involves a combination of techniques:

Idempotent Consumers: Consumers must be able to handle duplicate messages without creating inconsistencies (e.g., using message IDs to track already-processed messages).
Message Ordering: Kafka guarantees order within a partition. Ensure messages for a specific chat room are always sent to the same partition.
Commit Offsets Carefully: Consumers should only commit message offsets (acknowledging receipt) after successfully processing the message.
Gap Detection and Recovery: Implement mechanisms to detect potential message loss (e.g., sequence numbers, timestamps) and request missing messages from the message broker (Kafka) or a durable message store.

Client-Side Buffering and Retransmission: Client applications can buffer sent messages briefly and attempt retransmission if delivery acknowledgments are not received within a timeout period.

## Online status. Heartbeat
![IMAGE 2025-01-14 22:39:48](https://github.com/user-attachments/assets/9528f620-6cc9-49f6-b15f-b761389f531f)

----
### Scalability and offline messages (Individual Queues vs Topics for Group Chats)
Scalability Challenges with Individual Queues:

**Queue Quantity**: While Kafka can technically handle millions of topics (queues in this context), managing such a large number introduces operational complexity. There's a higher overhead for monitoring, managing partitions, and potential for uneven resource distribution.

**Storage Footprint**: Your concern about storage space is valid. Pre-allocating 1GB per queue, even if most remain largely empty, leads to significant storage waste (as you pointed out, 10 million GB is substantial).

Message Fan-out Overhead: When a message is sent to a group, the server has to write that message to potentially hundreds of individual queues. This fan-out operation can become a bottleneck as group sizes increase.

### Alternative Approaches:
1. Message Topics (Pub/Sub) per Group:
Instead of individual queues, use a pub/sub system like Kafka where each group chat has a dedicated topic.
Users subscribe to the topics of the groups they are members of.
** Advantages**:  
Reduces queue/topic count significantly (one per group instead of per user).
Efficient message distribution - a single publish operation reaches all subscribers.
Storage is more efficient as messages are only stored once per topic.
**Challenges**:  
Client-side complexity increases as users need to manage multiple topic subscriptions.
Requires robust message delivery guarantees and offline message handling.
Hybrid Approach (Queues for Offline, Pub/Sub for Online):

2. Use individual queues only for storing offline messages, leveraging the persistence of queue systems.
When a user is online, deliver messages in real-time using a pub/sub system for the group chat.
Advantages:
Balances real-time delivery with offline message persistence.
Reduces the constant load of fanning out messages to individual queues for online users.
Challenges:
More complex to implement as it requires managing both systems.
Shared Queues with Filtering:

3. Use a smaller number of shared queues and implement filtering mechanisms (e.g., message attributes, user IDs) so that consumers only receive relevant messages.
Advantages:
Reduces queue count, potentially simplifying management.
Challenges:
Filtering logic can add complexity.
If not designed carefully, could lead to consumers processing a large number of irrelevant messages.

## Online status. Fanout vs Periodical Fetch
![IMAGE 2025-01-14 22:39:51](https://github.com/user-attachments/assets/4666a2c3-81c6-4400-9002-992e1ae7c7e7)
![IMAGE 2025-01-14 22:39:53](https://github.com/user-attachments/assets/3321340a-a0cb-4aca-9b09-ce865790b109)

### Options: 
1. Redis for Presence:  
Strengths:  
Simplicity: Redis, as a fast key-value store, makes implementing a simple presence service straightforward. Setting user status with an expiry for automatic timeouts is efficient.
Speed: Redis excels at low-latency reads and writes, essential for real-time presence updates.  
Weaknesses:  
Single Point of Failure (Potential): While Redis can be clustered for high availability, your initial proposal doesn't address this, making it vulnerable if the Redis server goes down.
Scalability for Fan-out: As the book points out, notifying a large number of friends about a user's status change can be expensive in a Redis-based pub/sub model. Each status change potentially triggers numerous publish operations.  

2. Book's Approach: Dedicated Presence Server with Pub/Sub:  
Strengths:  
Scalability (Potential): By using a dedicated presence server cluster, you can distribute the load of presence updates and subscriptions across multiple machines.
Targeted Fan-out: The channel-based pub/sub model ensures that only relevant users (friends) receive status updates.  
Weaknesses:  
Increased Complexity: Building and managing a dedicated presence server cluster introduces more complexity compared to a straightforward Redis solution.
Scalability Concerns for Large Groups: Even with a dedicated server, fanning out status updates to very large groups (hundreds of thousands) remains a challenge.
3. PS. Addressing Scalability: Strategies for Large Groups:  
Both approaches face limitations when dealing with massive groups. Here are strategies to mitigate this:
On-Demand Presence Updates: As the book suggests, only fetch and display presence information when necessary (entering a group, manually refreshing). This reduces the background load of constant updates.
Presence Aggregation: Instead of pushing individual status changes, aggregate presence data for a group (e.g., "50 friends online"). This reduces the number of updates significantly.
Sharding: Divide users into smaller subsets (shards) based on a criteria (e.g., first letter of username). Presence updates are then scoped to the relevant shard, reducing the fan-out impact.

### Choosing the Right Approach:
1. Small to Medium Scale, Simplicity: Your Redis-based approach with proper clustering for high availability might be sufficient if you don't anticipate extremely large groups.
2. Large Scale, High Growth: A dedicated presence server (or a managed real-time service) with careful consideration for sharding or on-demand updates is more scalable.
3. Important Notes:
WebSocket for Real-time Updates: Regardless of the backend, use WebSockets for client-server communication to propagate presence changes efficiently.
Push Notifications: For offline users, consider using push notifications to inform them of important status changes (e.g., a friend coming online).
