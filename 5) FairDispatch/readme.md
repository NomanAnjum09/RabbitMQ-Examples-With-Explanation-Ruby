### You'll notice that dispatching is done in round robin fashion. Which means that even if a reciever is idle, it won't recieve a mesasge that is marked to sent to some other reciever and even if that reciever is busy with some request a pending messags will not get asssigned to idle reciever.

### It occurs because message is assigned to a particular reciever as it enters the queue, whilst it should be assigned to reciever for which all acknowledgments are recieved, which means that reciever is idle. 

### For a fair dispatch worker sets prefetch to 1, which means the sender should not send a new message before recieveing acknowldgment of previous message. In this way new message is sent only to an idle reciever. Creating a fair dispatch