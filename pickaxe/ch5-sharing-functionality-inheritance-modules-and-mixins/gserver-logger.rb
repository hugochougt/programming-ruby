require 'gserver'

class LogServer < GServer

  def initialize
    super(12345)
  end

  def serve(io)
    io.puts end_of_syslog
  end

private

  def end_of_syslog
    File.open("/var/log/syslog") do |log|
      puts "opening /var/log/syslog file..."
      log.seek(-500, IO::SEED_END)
      log.gets
      log.read
    end
  end
end

puts "LogServer is going to start..."
server = LogServer.new
server.start.join
