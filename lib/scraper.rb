require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

header = doc.css('.headline-26OIBN')
puts header.text.strip

puts "Courses: "
4.times { |i| puts doc.search(".title-oE5vT4")[i].text.strip }



=begin

online_course = doc.css('.text-4GLMvr.title-oE5vT4')
online_course.each do |course|
  puts course.text.strip
end

=end