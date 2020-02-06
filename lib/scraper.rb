require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")
# Nokogiri::HTML(html)
# doc = Nokogiri::HTML(html)
# puts doc

doc = Nokogiri::HTML(open("https://flatironschool.com/"))

puts doc.css(".title-3Kf9MY").text