## Ticket Master
### Get the position and estimated wait time
<img width="803" height="652" alt="image" src="https://github.com/user-attachments/assets/dcc80adf-7bf6-44a4-9086-ebe4df4a67fe" />


### Option 1. Redis and SortedSets
Redis Sorted Sets use Skip Lists + Hash Table, not Red-Black Trees as you might think.

Complexity Summary
| Operation | Redis Command | Complexity | Operation Description | 
| -- | --| -- | -- |
| Join Queue | ZADD | O(log N) | Skip list insertion | 
| Get Position | ZRANK | O(log N) | Skip list traversal + counting | 
| Users Ahead | ZCOUNT | O(log N) | Range query in skip list | 
| Remove User | ZREM | O(log N) | Skip list deletion | 
| Process Batch | ZRANGE + ZREM | O(log N * M) | M = batch size | 

```
// Performance estimates for different queue sizes:
// 1,000 users:     ~10 comparisons per operation
// 100,000 users:   ~17 comparisons per operation  
// 1,000,000 users: ~20 comparisons per operation
// 10,000,000 users: ~23 comparisons per operation
```

#### How Skip List is working
https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Skip_list_add_element-en.gif/960px-Skip_list_add_element-en.gif

Basic Queue Code:  
```csharp
using StackExchange.Redis;

public class ConcertQueueManager
{
    private readonly IDatabase _database;
    private readonly string _queueKeyPrefix = "queue:concert";
    
    public ConcertQueueManager(IConnectionMultiplexer redis)
    {
        _database = redis.GetDatabase();
    }
    
    // O(log N) - Add user to queue
    public async Task<long> JoinQueueAsync(string userId, string concertId)
    {
        var queueKey = $"{_queueKeyPrefix}:{concertId}";
        var timestamp = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds();
        
        // ZADD operation - O(log N)
        await _database.SortedSetAddAsync(queueKey, userId, timestamp);
        
        return await GetUserPositionAsync(userId, concertId);
    }
    
    // O(log N) - Get user's position in queue
    public async Task<long?> GetUserPositionAsync(string userId, string concertId)
    {
        var queueKey = $"{_queueKeyPrefix}:{concertId}";
        
        // ZRANK operation - O(log N)
        // This traverses the skip list counting elements
        var rank = await _database.SortedSetRankAsync(queueKey, userId);
        
        return rank.HasValue ? rank.Value + 1 : null; // +1 because rank is 0-based
    }
    
    // O(log N) - Count users ahead of specific user
    public async Task<long> GetUsersAheadAsync(string userId, string concertId)
    {
        var queueKey = $"{_queueKeyPrefix}:{concertId}";
        
        // Get user's score first - O(1) via hash table
        var userScore = await _database.SortedSetScoreAsync(queueKey, userId);
        
        if (!userScore.HasValue)
            return -1;
        
        // Count elements with score < userScore - O(log N)
        return await _database.SortedSetLengthByValueAsync(
            queueKey, 
            double.NegativeInfinity, 
            userScore.Value, 
            exclude: Exclude.Stop
        );
    }
}
```

To handle this number of users operation Redis uses ZRank Algorithm.  
```csharp
// This is what Redis does internally for ZRANK:
// Pseudo-code of skip list traversal

public class SkipListRankCalculation
{
    public long CalculateRank(string targetMember)
    {
        var currentNode = _header;
        var rank = 0L;
        
        // Start from highest level, work down
        for (int level = _maxLevel; level >= 0; level--)
        {
            // Traverse forward while score < target score
            while (currentNode.Forward[level] != null && 
                   currentNode.Forward[level].Score < targetScore)
            {
                // Add span of nodes we're jumping over
                rank += currentNode.Span[level];
                currentNode = currentNode.Forward[level];
            }
        }
        
        // Check if we found the exact member
        currentNode = currentNode.Forward[0];
        if (currentNode != null && currentNode.Member == targetMember)
        {
            return rank;
        }
        
        return -1; // Not found
    }
}
```
