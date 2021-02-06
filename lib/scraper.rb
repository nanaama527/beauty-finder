require 'nokogiri'
require 'httparty'
require 'pry'
require 'open-uri'

# require_relative "../cli.rb"
class Scraper


    # def scraper
    #     url = "https://www.samsbeauty.com/"
    #     unparsed_page = open(url)
    #     parsed_page = Nokogiri::HTML(unparsed_page)
    # end
    
    def scraper_2
        url = "https://www.samsbeauty.com/service/product/BestSellingNewProduct.beauty?category_no=34"
        unparsed_page = open(url)
        parsed_page = Nokogiri::HTML(unparsed_page)
        # binding.pry
    end

    def get_page

    end
    def find_products
        self.get_page.css(".content").children
    end

end

Scraper.new.scraper_2