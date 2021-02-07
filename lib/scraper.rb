require 'nokogiri'
require 'pry'
require 'open-uri'

# require_relative "../lib/cli"


class Scraper
    
    def body_cream_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-cream"
        selector ="#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        doc = Nokogiri::HTML(open(url))
        doc.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
        
        # binding.pry
    end

    def shower_gel_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-wash-shower-gel"
        selector = "#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        doc = Nokogiri::HTML(open(url))
        doc.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
    end

    def body_mists_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-sprays-mists"
        selector = "#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        doc = Nokogiri::HTML(open(url))
        doc.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
    end

    def body_lotion_scraper
        url = "https://www.bathandbodyworks.com/c/body-care/body-lotion"
        selector = "#primary div.search-result-content ul li .product-tile .product-outline-block .product-cont"
        doc = Nokogiri::HTML(open(url))
        doc.css(selector).each {|o|
            puts o.text.gsub(/[[:space]]/,"")
        }
    end

    # def item_container
    #     doc.css(" .grid-item-info")
    # end

    # def get_names
    #     item_container.css(" .product-name").css("p").children.map { |name| name.text }.compact
    # end

    # private

    # def get_prices
    #     item_container.css(" .product-pricing").css("span.local").children.map { |price| price.text }.compact
    # end

end
   


