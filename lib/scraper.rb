require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

 header = doc.css('.headline-26OIBN')
online_course = doc.css('.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC')
# online_course.each do |course|
#   puts course.text.strip
# end

p online_course[0].children
