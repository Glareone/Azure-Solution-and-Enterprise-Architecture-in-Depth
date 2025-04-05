# Distributed Locking system. Google Chubby
## Problem
Provide a lease-lock capabilities in Distributed system:  
Wide-known problem with lots of hidden road blocks.  

## Master-Slave paradigm in Chubby
* Master-Slave: In a typical master-slave pattern, only the master can process write requests, while slaves passively replicate data from the master.
* Chubby: In Chubby, both the master and replicas can process read requests. However, only the master can process write requests (acquiring or releasing locks). The replicas use Paxos to synchronize their state with the master and ensure data consistency across the cluster.

## Leader Election & Consensus Protocol
<img width="752" alt="image" src="https://github.com/user-attachments/assets/06cd6dad-d9c5-4aab-926e-458e36fc8aac" />  

* Master: A single master node is responsible for processing all client requests, maintaining the state of the distributed locks, and ensuring data consistency.
* Replicas: Multiple replica nodes maintain copies of the master's state, providing redundancy and fault tolerance.
* Paxos Protocol (Consensus): Chubby employs the Paxos protocol for achieving consensus among the replicas. Paxos guarantees that all replicas will eventually agree on the latest state of the system, even in the presence of network failures or node outages.

## Paxos as Consensus Protocol
<img width="574" alt="image" src="https://github.com/user-attachments/assets/8106fc6d-80da-41b5-8d11-2fcef9bb3247" />  

Distributed consensus using Asynchronous Communication is already solved by Paxos protocol, and Chubby actually uses Paxos underneath to manage the state of the Chubby system at any point in time.



## Naming Resolution Service (DNS-like)
<img width="794" alt="image" src="https://github.com/user-attachments/assets/a016526a-7ebe-405a-8bd0-f14fda97b633" />

## Coarse-Grained access
Chubby provides a developer-friendly interface for coarse-grained distributed locks (as opposed to fine-grained locks) to synchronize distributed activities in a distributed environment.  
  
<img width="801" alt="image" src="https://github.com/user-attachments/assets/1638fe79-4522-40ab-860f-b2d2008a766a" />

## Coarse-Grained vs. Fine-Grained Locks

**Coarse-grained locks**: Control access to larger resources or sections of data. They provide a broader level of synchronization but can lead to reduced concurrency if multiple processes compete for the same lock.
**Fine-grained locks**: Control access to smaller, more granular resources. They offer higher concurrency but can be more complex to manage and may introduce overhead due to frequent locking and unlocking operations.

## When not to use Chubby
Because of its design choices and proposed usage, Chubby should not be used when:
* Bulk storage is needed.
* Data update rate is high.
* Locks are acquired/released frequently.
* Usage is more like a publish/subscribe model.
