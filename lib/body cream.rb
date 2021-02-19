require 'pastel'
require 'pry'

require_relative "../config/environment"


class BodyCream

    attr_accessor :name, :price, :url

    @@all = []
    
    def initialize(name, price, url)
        @name = name
        @price = price
        @url = url
       
        @@all << self
    end

    def self.all
        
        @@all
    end

    def self.reset_all
        @@all.clear
    end


end
