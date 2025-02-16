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
## OUTBOX PATTERN
The application receives data which it persists to an inbox table in a database. Once the data has been persisted another application, process or service can read from the inbox table and use the data to perform an operation which it can retry upon failure until completion, the operation may take a long time to complete. The inbox pattern ensures that a message was received (e.g. to a queue) successfully at least once.

![image](https://github.com/user-attachments/assets/e191f866-9ba6-47b9-86fe-9c2cc7d7deee)


Real world example: You need to execute the operation with the delay (15 minutes, for instance).    
For instance, due to the user timeout or inactivity you need to evict the user communication history and create the end-communication-request.   
There are different implementations of this pattern. Some of them focuses on shared-database principle and fully isolated services which work with the information.  

![image](https://github.com/user-attachments/assets/ad7da18e-ca04-4853-92bc-ae9f7ec00a92)
