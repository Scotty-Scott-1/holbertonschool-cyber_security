require 'net/http'
require 'uri'


def get_request(url)

  my_url = URI.parse(url)
  response = Net::HTTP.get_response(my_url)
  code = response.code


  puts "Response status: #{response.code} #{response.message}"
  puts 'Response body:'
  if code == "404"
    puts "{\n}"
    
  else
  puts response.body
  end
end
