require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

serialized_html = URI.open(url).read # Download the data
html_doc = Nokogiri::HTML.parse(serialized_html) # Parse the string into a usable object

html_doc.search('.standard-card-new__article-title').each do |element|
  puts element.text.strip
  puts element.attributes['href']
end
