require "json"

string = '{"status":200,"message":null, "result":{"id":311787, "isdead":isfalse}'

json = JSON.parse(string)
puts json.inspect

puts json["status"]
puts json["message"]

