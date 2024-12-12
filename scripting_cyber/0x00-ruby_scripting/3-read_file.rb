require 'json'

def count_user_ids(path)
  file = File.read(path)
  new_file = JSON.parse(file)
  my_array = []

  new_file.each do |hash|
    my_array << hash['userId']
  end

  count = my_array.tally

  count.each do |key, value|
    puts "#{key}: #{value}"
  end
end
