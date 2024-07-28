require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open('http://example.com'))
puts doc.title
