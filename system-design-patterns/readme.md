# System Design Patterns.
---
### BLOOM FILTER
<img src="https://github.com/user-attachments/assets/81711354-1a81-4868-b33d-81b21136fd06" alt="Bloom Filter" width="400">

* Bloom filter is used in situations when you want to check if element is presented in your collection or database without reading the data from the database.
* Typical Problem: "How to reduce the number of database or collection read operations?"
* Real world example:
   1. SQL Database uses Bloom filter to check if such element exist. Using single hash algorithm isnt sufficient to guarantee that element doesnt exist. Reduce I\O.
   2. NoSQL MongoDB uses Bloom filter in LSM-tree to optimize flushing on the disk. Example: you need to check several files. Reduce I\O operations.
      a. File 1 bloom filter: "user123" → MAYBE (check the file)
      b. File 2 bloom filter: "user123" → DEFINITELY NOT (skip this file!)
      c. File 3 bloom filter: "user123" → DEFINITELY NOT (skip this file!)
   4. Useful when you search over several database shards and you want to determine what shards to read to get all needed information and reduce the number of reads.
   5. Redis. Fast prefilter to check some conditions. For instance "Is the member with id 'X' a premium member?". Speed-up searching and condition checks.
   6. Bloom filter does not guarantee that element exists, but if several related hashes found - the chance is very high. But the algorithm can guarantee that if you dont see any related hashes - the element does not present in the database or collection. 
---
## CONSISTENT HASHING
## QUORUM
## LEADER AND FOLLOWER
## WRITE-AHEAD LOG
## SEGMENTED LOG
## HIGH-WATER MARK
## LEASE
## HEARTBEAT
## GOSSIP PROTOCOL
## PHI ACCURATE FAILURE DETECTION
## SPLIT BRAIN
## FENCING
## CHECKSUM
## VECTOR CLOCKS
## HINTED HANDOFF
## READ REPAIR
## MERKLE TREES
## TWO-PHASE COMMIT
---
### SAGA PATTERN
<img src="https://github.com/user-attachments/assets/744045be-d6ed-4ccf-b857-15c289a5de87" alt="Saga" width="400">

---
### OUTBOX PATTERN
* Dual-write problem: The outbox pattern's primary purpose is ensuring atomicity between database writes and event publishing in distributed systems. 
* Typical problem for outbox pattern: "How can I guarantee that when I save data to my database, I also publish an event, and both succeed or both fail together?"
* **Real world example**:
   1. You places an food order, and system needs to:  
     a. Save the order to the database.  
     b. Publish an "OrderCreated" event for other services.  
   2. You save the file to Azure Blob Storage or S3 and want to process it:    
     a. Better to subscribe on event using Azure EventGrid or AWS EventBridge rather than send the event right after finishing file save operation.  

* **Typical implementations**:
   1. Write to two database tables, "Order" and "Order-Event". DB Will produce events on each write to the "Order-Event" table. Another service just subscribes on this event or you send it to the queue to provide retry-policy and improve traceability.
      ![image](https://github.com/user-attachments/assets/e191f866-9ba6-47b9-86fe-9c2cc7d7deee)
   2. Write to two database tables, "Order" and "Order-Event". Periodically read from "Order-Event" table, send events to the Queue.
      ![image](https://github.com/user-attachments/assets/ad7da18e-ca04-4853-92bc-ae9f7ec00a92)

#### Outbox pattern vs 2PC vs 3PC vs SAGA vs Naive (2 awaits)
1. Outbox pattern is much cheaper than 3PC in terms of implementation, introduces less complexity, more maintenable.
2. "2-Phase commit" 2PC does not provide guarantees for heterogenious systems, and expensive
3. "2-Awaits" (write to DB, write to Queue) is error prone approach which is working 99.5% of the time, but sometimes may fail, so no guarantees.
4. "3-Phase commit" 3PC is very expensive, very rarely used in real systems.
5. SAGA pattern - can work in situations when you can rollback changes, does not replace Outbox pattern.
---
### LISTEN TO YOURSELF PATTERN
* Dual-write problem: the listen to yourself pattern's primary purpose is ensuring atomicity between database writes and event publishing in distributed systems.  
* Problem is identical to Outbox pattern's problem. "How can I guarantee that when I save data to my database, I also publish an event, and both succeed or both fail together?"

* Implementation:
1. Your app writes to the database (normal operation).
2. A separate specialized tool monitors the database for changes.
3. When it detects row creation/update/deletion, it emits events to a queue/topic.
4. Your app (and other services) consume these events.



---
### Outbox vs Listen To Yourself vs 2PC

Pattern Comparison
| Aspect          | Listen to Yourself       | Outbox Pattern          | 2PC                    |
|-----------------|--------------------------|-------------------------|------------------------|
| **Complexity**  | 🟡 Medium                | 🟡 Medium                | 🔴 High                |
| **Performance** | 🟢 Good                  | 🟢 Good                  | 🔴 Poor                |
| **Atomicity**   | 🟡 Eventually consistent | 🟡 Eventually consistent | 🟢 Strongly consistent |

Listen to Yourself:
✅ Single write operation (simpler business logic)  
✅ Database is source of truth  
❌ Requires CDC (Change Data Capture tooling and supporting systems) infrastructure. 
  * CDC is a method of tracking and capturing changes made to a database so they can be replicated or processed elsewhere.
     - Debezium.
     - Maxwell (for MySql).
     - AWS DMS (AWS Database Migration System).
     - Confluent (commertial Kafka-based tool).
     - MongoDB Change Streams,
     - PostgreSQL logical replication
     - Google Cloud Dataflow
     - Azure Event Hubs (with CDC connectors)
   
❌ Events tied to database schema changes  
❌ Harder to add business context to events  

Outbox Pattern:  
✅ Events can contain rich business context    
✅ No external CDC dependencies  
❌ Requires outbox table management  
❌ Business logic must remember to write to outbox  

2PC:  
✅ Strong consistency guarantees  
❌ Blocking protocol (availability issues)  
❌ Performance overhead  
❌ Complex failure recovery  

**When to Choose Which?**:  
* Listen to Yourself: When you want database-driven architecture and can invest in CDC infrastructure.  
* Outbox: When you need fine-grained control over events and business context.  
* 2PC: When you absolutely must have strong consistency (rare in modern systems).  
