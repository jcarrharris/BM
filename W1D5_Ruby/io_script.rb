@stdout.kind_of?(IO)

$stdout = File.open("test.log", "w")

puts "I am going tot he file. It is more fun than printing on the console."

$stdout.flush

$stdout.equal?(STDOUT)

$stdout = STDOUT

puts "Oh Em Gee, I am going back on the console"

#system('ls -l')
#system('echo Wheee')