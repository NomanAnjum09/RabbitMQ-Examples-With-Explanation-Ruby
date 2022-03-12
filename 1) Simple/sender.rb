#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

for i in 1..5
    channel.default_exchange.publish('Hello World! ' + String(i), routing_key: queue.name)
    puts " [x] Sent 'Hello World!'0 " + String(i) + " times"
end
connection.close