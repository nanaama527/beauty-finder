require 'pastel'
require 'pry'

require_relative "../lib/scraper"

class ShowerGel
  
    @@all = []
    
    def initialize
       @@all << self
    end

    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
    end
end
