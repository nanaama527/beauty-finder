require 'nokogiri'
require 'pry'
require 'open-uri'

require_relative "../config/environment"


class Scraper

    def body_cream_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-cream"
        selector ="#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        @doc = Nokogiri::HTML(open(url))
        @doc.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
        
        # binding.pry
    end

    def shower_gel_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-wash-shower-gel"
        selector = "#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        @doc_1 = Nokogiri::HTML(open(url))
        @doc_1.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
    end

    def body_mists_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-sprays-mists"
        selector = "#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        @doc_2 = Nokogiri::HTML(open(url))
        @doc_2.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
    end

    def body_lotion_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-lotion"
        selector = "#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        @doc_3= Nokogiri::HTML(open(url))
        @doc_3.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
    end

    def get_names
        # binding.pry
        names = @doc.css("h3").css(" .product-name").children.map { |name| name.text }.compact
        names.map do |names|
            names.gsub(/\n/,"").strip
        end
    end
    
    private

    def get_prices
       prices = @doc.css(" .product-pricing").css("span.product-sales-price").children.map { |price| price.text }.compact
       prices.map do |names|
            prices.gsub(/\n/,"").strip
       end
    end


end
   

Scraper.new.body_cream_scraper
