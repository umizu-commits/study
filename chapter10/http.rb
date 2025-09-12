require 'net/http'
require 'uri'

uri = URI.parse("http://www.example.com")
response = Net::HTTP.get_response(uri)

puts response.code
puts response.body