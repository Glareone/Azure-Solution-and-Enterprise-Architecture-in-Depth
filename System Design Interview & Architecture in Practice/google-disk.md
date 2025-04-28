# Design the "Google Drive"
![image](https://github.com/user-attachments/assets/96442563-c9ee-4b35-973b-b972401e05aa)

## Functiona & Non-Functional Requirements. Limitations
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
4. Ability to share with friends
5. Send notifications or subscribe on changes

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

### Basic Estimations
1. 50M signed users and 10M DAU.
2. 10GB of space per user. Total space is 50M * 10GB = 500 Petabyte.
3. User uploads 2 files per day. Average file size is 1MB.
4. Read-Write ratio is 1:1.
5. 10M * 2 uploads / 24h / 3600s = 240 Requests per second on writing. + 240 requests on reading based on ratio. -> 480 Requests/s.
