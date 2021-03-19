require 'open-uri'
require 'nokogiri'

keyword = 'electric car'
url = "https://www.ft.com/search?sort=date&q=#{keyword}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.js-teaser-heading-link').each do |element|
  puts element.text.strip
end
