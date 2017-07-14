require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage (ville)
	base_page_url="http://annuaire-des-mairies.com/95/"
	page=Nokogiri::HTML(open("#{base_page_url}#{ville}.html"))
	mail=page.css(" table tbody tr td.style27 p.Style22 font")
	mail.each do |x|
	puts x.text
end

end


get_the_email_of_a_townhal_from_its_webpage("ableiges")