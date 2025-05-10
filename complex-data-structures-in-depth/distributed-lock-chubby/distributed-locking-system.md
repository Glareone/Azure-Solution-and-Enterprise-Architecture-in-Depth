# Distributed Locking system. Google Chubby
## Problem
Provide a lease-lock capabilities in Distributed system:  
Wide-known problem with lots of hidden road blocks.  

## Other related pages
1. [High-Level Architecture & Design Rationale](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/complex-data-structures-in-depth/distributed-lock-chubby/chubby-high-level-architecture.md)

## Master-Slave paradigm in Chubby
* Master-Slave: In a typical master-slave pattern, only the master can process write requests, while slaves passively replicate data from the master.
* Chubby: In Chubby, both the master and replicas can process read requests. However, only the master can process write requests (acquiring or releasing locks). The replicas use Paxos to synchronize their state with the master and ensure data consistency across the cluster.

## CAP Theorem
Chubby prioritizes strong consistency and partition tolerance, sacrificing some degree of availability.
* Since Chubby guarantees strong consistency by ensuring that all read and write requests go through the master, technically, we can categories Chubby as a CP system.

#### CONSISTENCY 
Chubby's architecture is based on a master-backup design which ensures strong consistency. Chubby continues to operate as long as no more than half of the servers fail, and it is guaranteed to make progress whenever the network is reliable.
* Master-Backup Design: Chubby's master-backup architecture ensures that all read and write requests go through the master node, guaranteeing that all replicas have the same state at any given time. This enforces strong consistency, ensuring that all clients see the same data, regardless of which replica they access.
* If the master dies, Chubyy chooses a new master from the backup servers. 
* Paxos Protocol: The use of the Paxos protocol for replica synchronization further reinforces strong consistency. Paxos guarantees that all replicas will eventually agree on the latest state of the system, even in the presence of network failures or node outages.

#### PARTITION TOLERANCE
* Master Election: Chubby can tolerate the failure of the master node by electing a new master from the backup servers. This ensures that the system remains operational even if a significant portion of the cluster is unavailable.
* Paxos Quorum: Paxos protocol requires a quorum of replicas to agree on any state change. This means that even if a network partition occurs, as long as a majority of the replicas are still reachable, the system can continue to operate and make progress.

#### AVAILABILITY
Chubby does select a new master in the event of a network partition. However, this does not guarantee that Chubby will remain available across the entire partitioned network.
* Network Partitions: In the event of a network partition, Chubby becomes unavailable, as it cannot guarantee consistency across the partitioned network. However, Chubby is optimized for the common case where there is a stable master and no partitions, providing high availability in most scenarios.

## Leader Election & Consensus Protocol
<img width="752" alt="image" src="https://github.com/user-attachments/assets/06cd6dad-d9c5-4aab-926e-458e36fc8aac" />  

* Master: A single master node is responsible for processing all client requests, maintaining the state of the distributed locks, and ensuring data consistency.
* Replicas: Multiple replica nodes maintain copies of the master's state, providing redundancy and fault tolerance.
* Paxos Protocol (Consensus): Chubby employs the Paxos protocol for achieving consensus among the replicas. Paxos guarantees that all replicas will eventually agree on the latest state of the system, even in the presence of network failures or node outages.

## Paxos as Consensus Protocol. Quorum
Distributed consensus algorithms need a quorum to make a decision, so several replicas are used for high availability. One can view the lock service as a way of providing a generic electorate that allows a client application to make decisions correctly when less than a majority of its own members are up. 

<img width="574" alt="image" src="https://github.com/user-attachments/assets/8106fc6d-80da-41b5-8d11-2fcef9bb3247" />  

Distributed consensus using Asynchronous Communication is already solved by `Paxos protocol`, and Chubby actually uses Paxos underneath to manage the state of the Chubby system at any point in time.

## Naming Resolution Service (DNS-like)
<img width="794" alt="image" src="https://github.com/user-attachments/assets/a016526a-7ebe-405a-8bd0-f14fda97b633" />

Upon initialization, a Chubby client performs the following steps:

**Find the master to send requests:**
1) Client contacts the DNS to know the listed Chubby replicas.
2) Client calls any Chubby server directly via Remote Procedure Call (RPC).
3) If that replica is not the master, it will return the address of the current master.
4) Once the master is located, the client maintains a session with it and sends all requests to it until it indicates that it is not the master anymore or stops responding.

![image](https://github.com/user-attachments/assets/0dd0dee8-bac9-4dd6-ae21-1ea1af83df8e)

## Chubby File System POSIX-like

<img width="790" alt="image" src="https://github.com/user-attachments/assets/01e24602-c696-4c23-9c4f-32257e613880" />

File format: `/ls/cell/remainder-path`

The main reason why Chubby's naming structure resembles a file system to make it available to applications both with its own specialized API, and via interfaces used by our other file systems, such as the Google File System. This significantly reduced the effort needed to write basic browsing and namespace manipulation tools

## Coarse-Grained access
Chubby provides a developer-friendly interface for coarse-grained distributed locks (as opposed to fine-grained locks) to synchronize distributed activities in a distributed environment.  
  
<img width="801" alt="image" src="https://github.com/user-attachments/assets/1638fe79-4522-40ab-860f-b2d2008a766a" />

## Coarse-Grained vs. Fine-Grained Locks

**Coarse-grained locks**: Control access to larger resources or sections of data. They provide a broader level of synchronization but can lead to reduced concurrency if multiple processes compete for the same lock.
**Fine-grained locks**: Control access to smaller, more granular resources. They offer higher concurrency but can be more complex to manage and may introduce overhead due to frequent locking and unlocking operations.

Example: If multiple processes need to perform complex operations involving multiple tables in a database, it might be more efficient to acquire a coarse-grained lock on the entire database. This prevents other processes from modifying any data in the database while the operation is in progress, ensuring data integrity and consistency.

## Locking type. Advisory locks
Chubby locks are advisory in nature. This means that Chubby itself does not enforce the locks; it merely provides a mechanism for clients to acquire and release locks and to discover which locks are currently held. It is up to the individual applications to respect the locks and avoid accessing or modifying protected resources while the locks are held by other clients.

**Useful when you need to check who held the lock and what's inside of the locked file (why it's stuck, for instance)**

## Master Elections
![image](https://github.com/user-attachments/assets/9df0caea-7b95-4d12-9e70-fa3cdc1b6358)

Once the master election starts, all candidates attempt to acquire a Chubby lock on a file associated with the election. Whoever acquires the lock first becomes the master. The master writes its identity on the file, so that other processes know who the is current master.


## When not to use Chubby
Because of its design choices and proposed usage, Chubby should not be used when:
* Bulk storage is needed.
* Data update rate is high.
* Locks are acquired/released frequently.
* Usage is more like a publish/subscribe model.
