require "socket"

server = "chat.freenode.net"
port = "6667"
nick = "HelloBot"
channel = "#bitmaker"
greeting_prefix = "privmsg #bitmaker :"
greetings = ["hello", "hi", "hola", "yo", "wazup", "guten tag", "howdy", "salutations", "who the hell are you"]

irc_server = TCPSocket.open(server, port)

irc_server.puts "USER bhellobot = * BHelloBot"
irc_server.puts "NICK #{nick}"
irc_server.puts "JOin #{channel}"
#irc_server.puts "PRIVMSG #{channel} :Hello from IRB Bot"

# Hello, Bot!
until irc_server.of?  do
	msg = irc server.gets.downcase
	puts msg

	wasGreeted = false
	greetings.each { |g| wasGreeted = true if msg.include? g}

	if msg.include? greeting_prefix && wasGreeted
		response = "w00t! Someone talked to us!!! Hello!!"
		irc_server.puts "PRIVMSG #{channel} :#{response}"
	end
end


	
end