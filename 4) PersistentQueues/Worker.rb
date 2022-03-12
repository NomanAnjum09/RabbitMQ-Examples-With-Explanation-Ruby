require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel
queue = channel.queue('persist_queue',durable: true)

queue.subscribe(block: true) do |delivery_info, _properties, body|
    puts " [x] Received #{body}"
    # imitate some work
    sleep body.count('.').to_i
    puts ' [x] Done'
  end