### DynamoDB in Depth
### Top principles DynamoDB follows
1. Consistent Hashing to distribute load and add new nodes to Dynamo cluster.
   - It also allows you to remove nodes from the Dynamo Cluster.
   - AWS manages the underlying infrastructure automatically. The consistent hashing specifically works on partition keys to determine which partition stores your data.
   - DynamoDB splits the node hash range onto two if partition exceeds `~10GB or it reaches the throughput threshold`. The hash range is divided, and roughly half the data moves to a new partition.
2. DynamoDB provides eventual consistency overall, it's default option for read requests.
   - But you can request strong Consistency if it's necessary.
   - DynamoDB can provide Strong Consistency for `TransactionWrites` across multiple partitions but with `Performance penalty`
3. DynamoDB provides eventual consistency for data replication.
4. Conflict resolution is `last write wins` but with additional caveats.
   - DynamoDB uses vector clocks (or similar timestamp mechanisms) to order writes.
   - When replicas have conflicting versions, the write with the latest timestamp wins.
   - DynamoDB also provides the engine mechanism to avoid conflicts at all: `// Only update if current value matches expectation: UpdateItem with ConditionExpression: "version = :expectedVersion"`
5. Manages temporary failures and outages.
   - sloppy quorum (N,R, W nodes) for internal DynamoDB Database
   - for DynamoDB as service: You don't configure N/R/W values - AWS handles this.
   - For DynamoDB Service it handles it using multi-AZ replication, Transparent Recovery. 


## Consistent Hashing for DynamoDB
![image](https://github.com/user-attachments/assets/8844e35f-2a99-4cfd-92da-ee3786faa835)

* Original partition: hash range [0x0000 - 0xFFFF]
* After split: 
  - Partition A: [0x0000 - 0x7FFF]  
  - Partition B: [0x8000 - 0xFFFF]
#### Key Differences from Classic Consistent Hashing
* Traditional Distributed Hash Table: You explicitly add nodes to the ring
* DynamoDB: AWS adds partitions based on your data patterns

#### Traditional Distributed Hash Table (DHT): You manage replication factor (N)
* DynamoDB: AWS handles replication (typically 3x across AZs)
* Traditional Distributed Hash Table: You handle node failures
* DynamoDB: AWS manages partition health and replacement
