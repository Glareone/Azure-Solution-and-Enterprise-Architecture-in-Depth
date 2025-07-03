# System Design Patterns.
## BLOOM FILTER
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
## SAGA PATTERN
---
### OUTBOX PATTERN
* The outbox pattern's primary purpose is ensuring atomicity between database writes and event publishing in distributed systems.
* Typical problem for outbox pattern: "How do I guarantee that when I save data to my database, I also publish an event, and both succeed or both fail together?"
* Real world example:
   1. You places an food order, and system needs to:  
     a. Save the order to the database.  
     b. Publish an "OrderCreated" event for other services.  
   2. You save the file to Azure Blob Storage or S3 and want to process it:    
     a. Better to subscribe on event using Azure EventGrid or AWS EventBridge rather than send the event right after finishing file save operation.  
* Typical implementations:
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

