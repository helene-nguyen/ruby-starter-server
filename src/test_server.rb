require "socket"
# consider the test will be the client to see results
require "test/unit"

class ServerTest < Test::Unit::TestCase
  #   def test_tcp_request_response
  #     server = TCPSocket.open("localhost", 3008)

  #     # send a request message to the server
  #     request = "Hello, server!"
  #     server.puts(request)

  #     # read the response message from the server
  #     response = server.gets
  #     assert_equal "Hey, client!\n", response

  #     # close the socket connection to the server
  #     server.close
  #   end

  def test_tcp_request_response
    server = TCPSocket.open("localhost", 3008)

    # send a request message to the server
    request = "Hello from client A"
    server.puts(request)

    # read the response message from the server
    response = server.gets
    assert_equal "Hey, A!\n", response

    # close the socket connection to the server
    server.close
  end

  def test_http_customer_42
    server = TCPSocket.open("localhost", 80)

    request = "" "GET /customers/42 HTTP/1.1\r\nAccept: */*\r\n\r\n" ""

    server.puts(request)

    response = ""

    while line = server.gets
      response += line
    end

    expected = "" "HTTP/1.1 200\r\n\r\nHey, 42!\n" ""

    assert_equal expected, response

    server.close
  end
end

# Expected result fail when run this file only
