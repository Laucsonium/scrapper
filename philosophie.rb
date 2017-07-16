require 'rubygems'
require 'nokogiri'
require 'open-uri'


base_page_url="https://fr.wikipedia.org/wiki/Sp%C3%A9cial:Page_au_hasard"

while base_page_url!="https://fr.wikipedia.org/wiki/Philosophie"
	
	page=Nokogiri::HTML(open(base_page_url))
	p

	first_link=page.xpath("//*[@id='mw-content-text']/div/p[1]/a[1]")


	page_url=first_link[0]["href"]
	base_page_url="https://fr.wikipedia.org#{page_url}"

	puts base_page_url

end
