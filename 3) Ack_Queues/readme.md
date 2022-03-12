### In Previous cases messages are dispatched to recievers and deleted once it is dispatched to a consumer
### If a consumer dies while doing a task, sender has no info about it and the message gets wasted.
### We apply acknowldge mechanism, so when a consumer completes it task with message it replies with acknowlegment and then sender 
### deletes that particular message. In case sender doesn't get ack it assumes that client is dead and resends message to some other consumer

### Sender
Sender sends the message in regular fashion

### Receiver

Receivers while subscribing sets manual Acknowledgment and sends an aknowdgment when message is recieved. Exchange than waits for manual aknowldgment from receivers before deleting a message.