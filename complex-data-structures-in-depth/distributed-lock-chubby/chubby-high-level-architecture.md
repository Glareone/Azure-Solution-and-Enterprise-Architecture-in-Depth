# High-level Architecture

## Terms
Chubby cell
Chubby servers
## Chubby client library
Client applications use a Chubby library to communicate with the replicas in the chubby cell using RPC.

<img width="661" alt="image" src="https://github.com/user-attachments/assets/ef96284d-ad60-4956-9a67-6470baf4856b" />


## Chubby APIs
Chubby exports a file system interface similar to POSIX but simpler. It consists of a strict tree of files and directories in the usual way, with name components separated by slashes.

We can divide Chubby APIs into following groups:

* General
* File
* Locking
* Sequencer

```File format: /ls/chubby_cell/directory_name/.../file_name```

* `/ls` refers to the lock service, designating that this is part of the Chubby system.
* `chubby_cell` - Is the name of a particular instance of a Chubby system (the term cell is used in Chubby to denote an instance of the system).  
* `file_name` - A series of directory names
* `/ls/local` - A special name, will be resolved to the most local cell relative to the calling application or service.

