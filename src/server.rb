require "socket"

# use environment variable, switch to 3000 if not specified
port = ENV.fetch("PORT", 3008).to_i

# # to start the server, we use TCPServer class
server = TCPServer.new port

puts "Starting server http://localhost:#{port}"

# loop forever then for each iteration, waits for a client connection
loop do
  # server accepts connections to the socket and waits for a new connection to come in
  client = server.accept
  # server reads the request message from the client
  request = client.gets

  # server checks if request message matches the regex
  if result = request.match(/^Hello from client (.*?)$/)

    puts result.inspect # expect #<MatchData "Hello from client A" 1:"A">
    puts result[0] # => Hello from client A
    client_id = result[1] # => 1:"A"
    response = "Hey, #{client_id}!"

    client.puts(response)
  end

  client.close
end

=begin
- start the server
- run test

Expectation: the test should pass and the server should terminate
=end
