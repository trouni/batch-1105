require 'open-uri'
require 'nokogiri'

def scrape_top_5_urls
  # 1. Download the HTML from the page (https://www.imdb.com/chart/top)
  url = 'https://www.imdb.com/chart/top'
  serialized_html = URI.open(url).read

  # 2. Parse the HTML
  html = Nokogiri::HTML.parse(serialized_html)

  # 3. Search and return the top 5 urls
  html.search(".titleColumn a").first(5).map do |element|
    "https://www.imdb.com#{element.attribute("href").value}"
  end
end

def scrape_movie(url)
  # 1. Download the HTML from the page (https://www.imdb.com/chart/top)
  serialized_html = URI.open(
    url,
    'Accept-Language' => 'en',
    "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36"
  ).read

  # 2. Parse the HTML
  html = Nokogiri::HTML.parse(serialized_html)

  # 3. Search and return the movie data
  director = html.search('.ipc-metadata-list-item__list-content-item').first.text.strip
  storyline = html.search('.sc-16ede01-0').text.strip
  title = html.search('.sc-b73cd867-0').text.strip
  year = html.search('.sc-8c396aa2-1').first.text.strip.to_i
  rating = html.search('.eUYAaq').first.text.strip.to_f
  cast = html.search('.sc-bfec09a1-1').first(3).map do |el|
    # We have three link elements, but we only want the text inside (actor's name)
    el.text.strip
  end

  {
    cast: cast,
    director: director,
    storyline: storyline,
    title: title,
    year: year,
    rating: rating
  }
end