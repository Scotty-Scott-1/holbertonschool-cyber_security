require 'net/http'
require 'uri'


def get_request(url)

  my_url = URI.parse(url)
  response = Net::HTTP.get_response(my_url)

  puts "Response status: #{response.code} #{response.message}"
  puts 'Response body:'
  puts response.body
end
