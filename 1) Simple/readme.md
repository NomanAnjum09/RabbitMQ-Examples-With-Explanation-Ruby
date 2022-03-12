
# A simple example of how to create a queue based messaging. 
### Sender
The sender create a channel and a queue inside the channel with name 'hello'
Sender then sends messages to exchange which fills the queue with those messages.

### Reciever
The reciever creates a channel and subscribe to exchange with queue Name "hello", same which is created by sender
Sender dispatches messages in queue to the recievers
