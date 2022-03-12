### Worker Queues avoid doing a resource-intensive task immediately and having to wait for it to complete. Instead we schedule the task to be done later. Task can be distributed to multiple recievers.

#### Sender
Sender sends messages with different time delays to exchange
A background process sends these tasks to recievers as they complete their previous tasks.
For multiple receivers messages are sent to recievers in round robin fashion.

#### Reciever
Reciever receives messages similiar as simple case
