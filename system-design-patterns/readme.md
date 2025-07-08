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
![image](https://github.com/user-attachments/assets/76574cc0-b8d8-446e-8944-ba5605f6714d)


Idea of the pattern:
* You do make changes directly to data, but only after logging them. The WAL ensures durability before the actual modification.
   - This guarantees that no matter what happens, the system can always recover or replicate its state.
* You're not storing the actual change, but a description/record of what needs to be changed.

**Typical Write-Ahead Log (WAL) Implementation**:
1. Log the intended change (write operation description to WAL)  
2. Apply the change to actual data structures  
3. Periodically checkpoint (persist in-memory changes to disk)  
4. Truncate old log entries (once data is safely persisted)

** Why WAL is Universal. The Pattern Solves the following problems**:
1. Crash recovery: "What was I doing before the crash?"
2. Replication: "What changes do I need to send to replicas?"
3. Ordering: "What's the correct sequence of operations?"
4. Durability: "How do I ensure data isn't lost?"

**Typical WAL Usage in different Databases**:
**B-Tree Databases:**  
1. PostgreSQL: Uses WAL for crash recovery and replication  
2. MySQL InnoDB: Redo logs (WAL implementation)  
3. SQLite: WAL mode for better concurrency  

**LSM-Tree Databases:** 
1. Cassandra: Commit logs before memtable writes  
2. HBase: Write-Ahead Log for RegionServers  
3. RocksDB: WAL for crash recovery  

**Distributed Databases**:  
1. Spanner: Uses Paxos with WAL for each shard
2. FoundationDB: WAL for transaction logging
3. TiDB: Raft logs + TiKV storage WAL

**Other Databases:** 
1. MongoDB: Oplog (operations log) for replication
2. Redis: AOF (Append-Only File) persistence
3. CockroachDB: Raft logs + storage WAL

**Typical WAL Usage in Distributed Systems**:
1. Consensus Protocols:
  - Raft: Leader writes entries to log, replicates to followers
  - Multi-Paxos: Acceptors maintain logs of accepted proposals
  - PBFT: Nodes maintain logs of protocol messages

2. Message Brokers:
  - Apache Kafka: Each partition is essentially a WAL
  - Apache Pulsar: BookKeeper uses WAL for durability
  - NATS Streaming: Message logs for persistence

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
![image](https://github.com/user-attachments/assets/793cfb5a-a9e0-46fa-baf4-f3e49751415c)

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
![image](https://github.com/user-attachments/assets/45b5dbe2-c68d-410e-ab90-e4892fc86e4c)

* Dual-write problem: the listen to yourself pattern's primary purpose is ensuring atomicity between database writes and event publishing in distributed systems.  
* Problem is identical to Outbox pattern's problem. "How can I guarantee that when I save data to my database, I also publish an event, and both succeed or both fail together?"

#### Implementation using CDC:
![image](https://github.com/user-attachments/assets/dfdd6a4a-b950-4aa7-806d-ad5d0a730af9)

1. Your app writes to the database (normal operation).
2. A separate specialized tool monitors the database for changes.
3. When it detects row creation/update/deletion, it emits events to a queue/topic.
4. Your app (and other services) consume these events.

Key Points:
* Usually implemented using Change Data Capture tooling (CDC).
* The CDC tool is not part of your application code - it's infrastructure that sits between your database and message broker.
* Your application code becomes simpler because it only needs to:
    - Write to database.
    - Listen to events (just like any other consumer).
* Requires additional service which detects DB writes.
* Some Native Cloud services provide this tool: Azure Event Hub, Google Cloud DataFlow.
* Some Database specific tools are able to detect changes.
    - MongoDB Change Streams.  
    - PostgreSQL Logical Replication.
    - PostgreSQL Logical Decoding: plugins pgoutput, wal2json.
    - MySQL: Binary log replication.
    - SQL Server: Change Data Capture.
    - Oracle: Streams (Enterprise-tier feature)
* Has infrastructure overhead - you need to introduce either new infra configuration to manage CDC.
    - especially if your database does not support this tool out of the box.
    - lots of options on the market.

#### Implementation using EventStore (LSM-tree Storages) or even using Azure EventHub:
![image](https://github.com/user-attachments/assets/6973c934-7335-4eb0-b186-6155a7e51aa8)
* The key: The original event is still in the EventStore/EventHub, so you can retry!

✅ Durability - original event won't be lost
✅ Traceability - you can find the component where something went wrong
✅ Ordering - events are processed in sequence
✅ Retry capability - failed processing can be retried
  
```javascript
// Idempotent Processing. You place the "PlaceOrderRequested" event first
// then you listen yourself and handle the "side-effects".
public async Task Handle(PlaceOrderRequested evt) {
    // Check if already processed
    if (await database.OrderExists(evt.OrderId)) {
        // Already in DB, just publish event
        await eventHub.SendAsync("OrderCreated", evt.OrderData);
        return;
    }
    
    // First time - save and publish
    await database.SaveOrder(evt.OrderData);
    await eventHub.SendAsync("OrderCreated", evt.OrderData);
}
```

```javascript
// Background service. Pull strategy (which obviously emulates CDC)
public async Task RecoveryService() {
    // Find orders in DB without corresponding "OrderCreated" events
    var unpublishedOrders = await database.GetOrdersWithoutEvents();
    
    foreach (var order in unpublishedOrders) {
        await eventHub.SendAsync("OrderCreated", order);
    }
}
```

---
### Outbox vs Listen To Yourself vs 2PC

Pattern Comparison
| Aspect          | Listen to Yourself (CDC)       |  Listen to Yourself (EventStore)  |Outbox Pattern          | 2PC      |
|-----------------|--------------------------| -------------------------|-------------------------|------------------------|
| **Complexity**  | 🟡 Medium                | 🟡 Medium                | 🟡 Medium                | 🔴 High                |
| **Performance** | 🟢 Good                  | 🟢 Good                  | 🟢 Good                  | 🔴 Poor                |
| **Atomicity**   | 🟡 Eventually consistent | 🟡 Eventually consistent | 🟡 Eventually consistent | 🟢 Strongly consistent |
| **Failure scenarios** | 🟡 Event publishing can fail | 🟢 EventStore retries  | 🟡 Event publishing can fail | 🟡 Any participant can block the commit |
| **Infrastructure**    | 🟡 Needs CDC tooling | 🟡 Requires Extra Database, EventStore or EventHub | 🟡 Needs background processors | 🟡 Needs 2PC coordinator |
| **Latency**           | 🟢 Low-medium | 🟢 Low | 🟢 Low-medium | 🔴 High |
| **Scalability** | 🟢 Good | 🟢 Excellent (LSM-tree database can provide fantastic throughput) | 🟢 Good (because your central storage is SQL)  | 🔴 Poor |

**Listen to Yourself:**  
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

**Outbox Pattern:**  
✅ Events can contain rich business context    
✅ No external CDC dependencies  
❌ Requires outbox table management  
❌ Business logic must remember to write to outbox  

**2PC:**  
✅ Strong consistency guarantees  
❌ Blocking protocol (availability issues)  
❌ Performance overhead  
❌ Complex failure recovery  

**When to Choose Which?**:  
* Listen to Yourself: When you want database-driven architecture and can invest in CDC infrastructure.  
* Outbox: When you need fine-grained control over events and business context.  
* 2PC: When you absolutely must have strong consistency (rare in modern systems).  
