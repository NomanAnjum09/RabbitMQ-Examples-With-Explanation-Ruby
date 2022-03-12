### A filtered broadcast is used where subscriber needs only a particular type of message from publisher.

### Sender
While publishing a message, sender attach a severity flag with message. Based on this flag message is published only to those receiver which is interested in that severity mood.

### Receiver
Receiver creates a queue and binds that queues with multiple severity flags. So the channel can decide which type of broadcast should be sent to that particular reciver.

This technique can work as fanout if all recievers attached themselves to only one severity or all severity types from sender