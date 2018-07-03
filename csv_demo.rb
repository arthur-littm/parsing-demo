require 'csv'

# TODO - let's read/write data from beers.csv
# filepath    = 'data/beers.csv'
# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# CSV.foreach(filepath, csv_options) do |row|
#   # p row
#   puts "#{row["Name"]} is from #{row["Origin"]}"
# end

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

filepath = "data/new_beers.csv"

beers = [
  { name: "Heineken", appearance: "Lager", origin: "Amsterdam" },
  { name: "Asahi", appearance: "Lager", origin: "Japan" },
]

CSV.open(filepath, "wb", csv_options) do |csv|
  csv << ["Name", "Appearance", "Origin"]

  beers.each do |beer|
    csv << [beer[:name], beer[:appearance], beer[:origin]]
  end

end








