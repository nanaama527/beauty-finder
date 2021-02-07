require 'nokogiri'
require 'open-uri'
require 'pastel'

class BodyCream

    attr_accessor :name, :price

    @@all = []
    
    def initialize
        @name = name
        @price = price
    end

    def self.all
        @@all << self
    end

    

end