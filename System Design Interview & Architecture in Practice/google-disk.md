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

