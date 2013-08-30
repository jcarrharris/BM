require "json"
require "open-uri"

file = open ("http://lcboapi.com/products/311787")
result = file.read

json = JSON.parse(result)
puts json.inspect

puts json["status"]
puts json["message"]
puts json["result"]["id"]
