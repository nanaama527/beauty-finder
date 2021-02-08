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

    def self.names_and_prices(url)
        doc = Nokogiri::HTML(open(url))
        doc.css(" .product-outline-block").map do |body_cream|
            nameprice_hash = {
            :name => body_cream.css(".product-name").text.strip,
            :price => body_cream.css(".product-pricing .product-sales-price").text,
            :url => body_cream.css("a").attribute("href").value
        }
        end
    end

    def self.get_shower_gel
        url = "https://www.bathandbodyworks.com/c/body-care/body-wash-shower-gel"
            product_array = names_and_prices(url)
            product_array.each do |shower_gel|
                name = shower_gel[name]
                price = shower_gel[price]
                url = shower_gel[url]
                ShowerGel.new(name, price, url)
            end
    end


    def self.get_body_cream
        url = "https://www.bathandbodyworks.com/c/body-care/body-cream"
            product_array = names_and_prices(url)
            product_array.each do |body_cream|
                name = body_cream[name]
                price = body_cream[price]
                url = body_cream[url]
                BodyCream.new(name, price, url)
            end
    end

    def self.get_body_mists
        url = "https://www.bathandbodyworks.com/c/body-care/body-sprays-mists"
        product_array = names_and_prices(url)
            product_array.each do |body_mists|
                name = body_mists[name]
                price = body_mists[price]
                url = body_mists[url]
                BodyMist.new(name, price, url)
            end

    end

    def self.get_body_lotion
        url = "https://www.bathandbodyworks.com/c/body-care/body-lotion"
        product_array = names_and_prices(url)
            product_array.each do |body_mists|
                name = body_lotion[name]
                price = body_lotion[price]
                url = body_lotion[url]
                BodyLotion.new(name, price, url)
            end
    end

end
   

Scraper.new.body_cream_scraper
