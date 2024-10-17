require 'nokogiri'
require 'net/http'

https= Net::HTTP.new('example.com', 443)

https.use_ssl=true

response = https.get("/")

doc=Nokogiri::HTML(response.body)
h1=doc.at('h1')

p= doc.at('p')

a= doc.at('a')

puts "O scrap está dividindo em : h1: #{h1.content}; p: #{p.content} ; a #{a.content}."

