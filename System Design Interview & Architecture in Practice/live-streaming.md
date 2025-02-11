# Live Streaming Platform
Separate system design to Youtube because in this case we have to deal with lower latencies and smaller chunk processing.

reference to: [Youtube and Hulu design](https://github.com/Glareone/Azure-Solution-and-Enterprise-Architecture-in-Depth/blob/main/System%20Design%20Interview%20%26%20Architecture%20in%20Practice/Youtube-Netflix-Hulu.md)

* Live streaming has a higher latency requirement, so it might need a different streaming protocol.
* Live streaming has a lower requirement for parallelism because small chunks of data are already processed in real-time.
* Live streaming requires different sets of error handling. Any error handling that takes too much time is not acceptable.

