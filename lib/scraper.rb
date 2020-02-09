require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

 header = doc.css('.headline-26OIBN')
online_course = doc.css('.text-4GLMvr.title-oE5vT4')
online_course.each do |course|
  puts course.text.strip
end