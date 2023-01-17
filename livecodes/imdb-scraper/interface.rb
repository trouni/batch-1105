require 'yaml'
require_relative 'scraper'

urls = scrape_top_5_urls
movies = urls.map { |url| scrape_movie(url) }

File.open('movies.yml', 'wb') do |file|
  file.write(YAML.dump(movies))
end
