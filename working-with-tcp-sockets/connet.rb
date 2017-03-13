require 'socket'

# naive connect
socket = Socket.new(:INET, :STREAM)

remote_addr = Socket.pack_sockaddr_in(80, 'google.com')
socket.connet(remote_addr)

# Ruby wrapper, the easier way
socket = TCPServer.new('facebook.com', 80)
