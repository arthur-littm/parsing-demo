require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

big_string = File.read(filepath)

data = JSON.parse(big_string)

# puts data["beers"][1]["name"]

origins = []

data["beers"].each do |hash|
  origins << hash["origin"]
end

p origins.uniq.sort
