require 'open-uri'
require 'nokogiri'

puts "What ingredient?"
ingredient = gets.chomp
url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?type=all&aqt=#{ingredient}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".m_titre_resultat a").each do |element|
  puts element.text
  puts element.attr('href')
end
