require 'nokogiri'
require 'httparty'
require 'pry'

# require_relative "../cli.rb"

def scraper
    url = "https://www.samsbeauty.com/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    binding.pry

end



scraper