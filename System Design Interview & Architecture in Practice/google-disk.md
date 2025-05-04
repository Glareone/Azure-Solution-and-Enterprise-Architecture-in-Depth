### Design the "Google Drive"
![image](https://github.com/user-attachments/assets/96442563-c9ee-4b35-973b-b972401e05aa)

---
### Functiona & Non-Functional Requirements. Limitations
### Functionality
1. Upload and Download Files.
2. File Sync.
3. Notifications.
4. All File Formats
5. File Revisions (Versions)

Features:
1. Add Files using drag and drop
2. Download Files.
3. Sync files across multiple devices. Added on one device - synced to other devices
4. Synchronization between users during one session (touched below)
5. Ability to share with friends
6. Send notifications or subscribe on changes
7. Resumable upload for larger files (because of potential network interruptions)

### Non-Functional
1. Support Mobile and Web app (browser).
2. Files Should be encrypted (At Rest).
3. File Size limit - 10GB.
4. 10M Daily Active Users.


### OUT OF SCOPE, But might be interesting during the interview
1. Collaboration on file editing (multiple people edit the same file)
2. Reliability of storage system. Data Loss is inacceptable.
3. Fast Sync Speed.
4. Wise Bandwidth usage. Keep the network usage under control, especially for mobile plan.
5. Scalability: System shoud be able to handle high volumes of traffic.
6. High Availability: System is functioning when some servers are offline, slowed down, or having unexpected network issues.
7. Files hierarchy & folders

---
### Basic Estimations

1. 50M signed users and 10M DAU.
2. 10GB of space per user. Total space is 50M * 10GB = 500 Petabyte.
3. User uploads 2 files per day. Average file size is 1MB.
4. Read-Write ratio is 1:1.
5. 10M * 2 uploads / 24h / 3600s = 240 Requests per second on writing. + 240 requests on reading based on ratio. -> 480 Requests/s.

### Naive implementation to touch basics

**Upload Steps**:
**Upload URL example with Resumable Parameter**: [https://api.example.com/files/upload?uploadType=resumable](https://api.example.com/files/upload?uploadType=resumable)  
1) Send the Initial Upload Request to retrieve URL where to upload the file with "resumeable" parameter  
2) Upload the file and monitor the state  
3) if upload is interrupted, resume the upload when it's possible (we can use append or blob format for that, Azure Blob Storage, for instance, supports this out of the box)  

**Download Steps**:
**Download URL example**: [](https://api.example.com/files/download?path=community%2F0001%2FAlex%2Fselected_file.txt&revision=1)
1) params: **file_path**: "community/Alex/selected_file.txt"
2) and **filerevisions**: "1"

**Get Revisions(Versions)**:
**Get Revisions URL example**: [](htttps://api.example.com/files/file-address-and-file-name/revisions?limit=10)
1) Get revisions history of the file (all changes and file versions)
2) Parameters: we could place file path into parameters
3) Revision history limit: 10

--- 
### Basics and General Considerations

![2025-04-28 22 18 28](https://github.com/user-attachments/assets/bd0b3d90-3e47-4356-a40a-a3896f5c6d5a)
1) Folder Structure - virtual, we can use virtual routing on File Storage level without applying hierarchy. For hierarchy it's important to make a good justification.

![2025-04-29 10 07 31](https://github.com/user-attachments/assets/b4717bd5-4ef1-43f1-8f06-a3c59be289e9)
1. WebAPI server to upload and download files
2. Database (to store files metadata and level of permissions, whom the file belongs to, etc)  
   a. To keep files metadata    
   b. Login Info  
   c. Files Info and permissions  
   d. Get File revisions  
3. Blob storage to store files  

---
### Synchronization challenge
![2025-04-29 10 12 43](https://github.com/user-attachments/assets/59774b76-3d43-45c8-9cab-350d6a68c36a)

To Sync the changes between users who make changes in parallel it's required 2 things:
1) Sync Service  
  Sync Service will process message from Chunk Uploaded Queue . It will look into UserClients table to find out the list of connected clients for the given user. Then it will fanout making call to Session server for each client to notify client.
2) Chunking  
   We should operate on the file chunks level. It's acceptable to follow last write wins in this case.

---
### Work together with one file
In order to update the one file together with someone we have to establish bi-directional communication line.  
To do that we need a kind of Session Service (Register user, start editing and receive updates near real-time).  

---
### Small Group
![image](https://github.com/user-attachments/assets/8a815e31-5c60-49f5-8033-1053076fb30e)
System for Collaborative Editing (Small Groups):

#### Direct File Update + WebSocket Notifications:
1. When a user edits a file chunk, immediately update the chunk in blob storage.
2. Simultaneously, send a WebSocket notification to all other collaborators in the group, informing them about the updated chunk.
Clients receiving the notification update their local copies accordingly.
3. Offline Handling: When an offline user reconnects, force a full file download to ensure they have the latest version.

**Strengths:**  
1. **Simplicity:** This approach reduces complexity by avoiding a separate messaging layer for small groups.  
2. **Low Latency:** Direct file updates combined with real-time WebSocket notifications minimize the delay experienced by users actively editing the document.  
3. **Reduced Overhead:** For small groups, the overhead of immediate file updates is manageable, especially if changes are granular (at the chunk level).

**Weaknessess:**
1. **Scalability Limits**: As the number of simultaneous editors increases, the overhead of constantly updating the blob storage and sending notifications to many clients could become a bottleneck. For large groups, a messaging system (like Kafka) would be more efficient in distributing updates and handling potential bursts of activity.
2. **Conflict Resolution (Crucial)**:
Proposal with Websockets and without messaging doesn't address how to handle concurrent edits by multiple users (only last write wins).
**You'll need a robust conflict resolution mechanism.**  
    a. Operational Transformation (OT): A common approach in collaborative editing that transforms concurrent operations to ensure consistency.  
    b. Differential Synchronization: Another technique that tracks changes and merges them efficiently.  
3. Offline Consistency:
While forcing a full download for offline users works, it can be inefficient for large files or frequent disconnections.  
Options:  
    a. Versioning: Assign versions to the document, so offline users only download necessary changes.  
    b. Differential Updates: Send only the changes (diffs) to offline users upon reconnection.

---
### Large Group && Conflict Resolution (Last Write Wins). Session Server.
<img width="747" alt="Screenshot 2025-04-29 at 10 20 51" src="https://github.com/user-attachments/assets/14755de3-1b11-4880-91c9-8e81515d65bc" />  
For large groups the system design becomes similar to the group chat. It means you have to use Messaging system and Topic.

**How It Works (High-Level):**

1. Publish Edits: When a user makes an edit, publish it as a message to a dedicated Kafka topic for the document. Include a timestamp or sequence number to determine order.
2. Single Consumer per Document: Have a single consumer (or a group of consumers acting as one logical consumer) responsible for processing edits for each document. This ensures edits are applied in the order they appear in the Kafka partition.
3. Conflict Resolution and File Update: The consumers read "edits" from the Kafka topic.  
3. Applies the edits to the document, using the timestamp or sequence number to determine the order and implement "last write wins" logic.
4. Updates the blob storage with the latest consistent version of the document.
5. WebSocket Notifications: After the file is updated, send WebSocket notifications to all collaborators to inform them of the changes (similar to your original design).

**Important Considerations:**
1. Timestamp Synchronization: Ensure that timestamps used for ordering are as closely synchronized as possible across clients to avoid inconsistencies.
2. Handling Edits from Offline Users: Design a strategy to incorporate edits made by offline users while minimizing conflicts (e.g., conflict markers, user-assisted merging).

---
### Storage & Updates Question
We sync only delta, which means only modified blocks are transferred to the blob storage. (could be S3 or Azure Blob Storage).
![IMAGE 2025-05-04 16:23:03](https://github.com/user-attachments/assets/3b538c43-25c7-4aeb-b4f2-4aa5745e94c0)

### High Level of (strong) consistency in Metadata. ACID vs BASE.
We obviously need to store file's metadata in the database. there are quite complex set of related file information: workspace it belongs to, owner, blocks, file history, etc.

We need to know that our File copy in reality stored on several disks in different racks (at least). If we select another level of replication (LZR, Geo-redundancy, etc) - the number of copies might be larger. So, blob itself has eventual consistency.

Potential DB Metadata Scheme:
![IMAGE 2025-05-04 16:28:02](https://github.com/user-attachments/assets/42718e83-b2d9-4578-9970-5d3de31d6590)

---
### Notification Service. Long-polling vs Websockets vs Server-side events SSE.
If we want to notify about file changes - we have to build Notification Service. We have to be wise here. Websockets might be too expensive for devices working on battery. Long-polling consumes less.

**Long Polling vs. SSE:**

| Feature | Long Polling | Server-Sent Events (SSE) |
| :-- | :-- | :-- |
| Connection Type | HTTP requests held open | Persistent HTTP connection |
| Best Scenario | Infrequent updates with a reasonable polling interval |  For near real-time updates, SSE's lower latency would be more suitable | 
| Latency | Can be higher (depends on polling interval) | Lower (near real-time) |
| Server Resource Consumption | Can be higher (many open connections) | Lower (efficient use of single connection) |
| Browser Support | Very wide | Wide, but slightly less than Long Polling |
| Battery Consumption | Can be higher (frequent reconnections) | Generally lower (fewer reconnections) |
| Complexity | Simpler to implement | Slightly more complex (event handling) |
| Network issues handling | Better due to reconnections | Slightly worse |

**Important Optimizations (For Both):**

* Efficient Polling/Heartbeat Intervals: Don't poll or send heartbeats too frequently to conserve battery. Find a balance between update latency and resource usage.
* Backoff Strategies: Implement exponential backoff for reconnection attempts in case of network errors to avoid aggressive polling.
* Mobile-Specific Considerations: Explore platform-specific APIs and best practices for managing background network activity on mobile devices to minimize battery drain.
