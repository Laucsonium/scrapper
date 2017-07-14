require 'rubygems'
require 'nokogiri'
require 'open-uri'


page="https://fr.wikipedia.org/wiki/Sp%C3%A9cial:Page_au_hasard"
page=Nokogiri::HTML(open(page))
