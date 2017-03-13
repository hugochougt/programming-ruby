require 'socket'

ONE_KB = 1024

server = Socket.new(:INET, :STREAM)
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
server.bind(addr)
server.listen(Socket::SOMAXCONN)

loop do
  connection, _ = server.accept

  print 'Connection class: '
  p connection.class
  # => Socket

  print 'Server fileno: '
  p server.fileno

  print 'Connection fileno: '
  p connection.fileno

  print 'Local address: '
  p connection.local_address

  print 'Remote address: '
  p connection.remote_address

  while data = connection.read(ONE_KB) do
    puts data
  end

  puts ''
  puts '=' * 81
  puts ''

  connection.close
end
