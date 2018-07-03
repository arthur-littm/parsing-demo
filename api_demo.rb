require 'json'
require 'open-uri'

puts "nickname?"
print "> "
nickname = gets.chomp
# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/#{nickname}"

big_string = open(url).read
user = JSON.parse(big_string)

puts "#{user["name"]} has #{user["followers"]} followers and #{user['public_repos']} repositories"
