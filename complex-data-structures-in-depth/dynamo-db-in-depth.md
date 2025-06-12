### DynamoDB in Depth
### Top principles DynamoDB follows
1. Consistent Hashing to distribute load and add new nodes to Dynamo cluster.
   - It also allows you to remove nodes from the Dynamo Cluster.
   - AWS manages the underlying infrastructure automatically. The consistent hashing specifically works on partition keys to determine which partition stores your data. 
2. DynamoDB provides eventual consistency overall, it's default option for read requests.
   - But you can request strong Consistency if it's necessary.
   - DynamoDB can provide Strong Consistency for `TransactionWrites` across multiple partitions but with `Performance penalty`
3. DynamoDB provides eventual consistency for data replication.
4. Conflict resolution is `last write wins` but with additional caveats.
   - DynamoDB uses vector clocks (or similar timestamp mechanisms) to order writes.
   - When replicas have conflicting versions, the write with the latest timestamp wins.
   - DynamoDB also provides the engine mechanism to avoid conflicts at all: `// Only update if current value matches expectation: UpdateItem with ConditionExpression: "version = :expectedVersion"`
