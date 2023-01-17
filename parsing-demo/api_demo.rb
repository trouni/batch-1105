require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
def fetch_github_info(username)
  url = "https://api.github.com/users/#{username}"
  
  serialized_json = URI.open(url).read # returns a string with the content of the page
  
  user = JSON.parse(serialized_json) # now a hash
  
  puts "#{user['name']} is located in #{user['location']} and has #{user['public_repos']} public repos."
end

puts "Please enter a GitHub username:"
print '> '
username = gets.chomp
fetch_github_info(username)