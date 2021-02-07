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

    def shower_gel(choice)
        puts "~~~~ ** SHOWER GELS ** ~~~~~"
        puts "Select a shower gel you'd like to view." + "\n\n"
        self.all.each_with_index do |shower_gel, index|
            puts "#{index + 1}: #{self.name}"
        end
        puts "\n"
        input = gets.strip
        input = input.to_i
        if input.is_3? String || input > ShowerGel.all.length || input <= 0
            puts "Please enter a number shown on screen"
        else
            input -= 1
        end
        shower_gel_detail(input)
    end

    def shower_gel_detail(choice)
        shower_gel_choice = ShowerGel.all[choice]
        puts "\n"
        puts "Name of Fragrance Mist: #{shower_gel_choice.name}"
        puts "Description: #{shower_gel_choice.description}"
        puts "Price: #{shower_gel_choice.price}"
        puts "\n"
        puts "Would you like to go back to the previous list?"
        puts "1: Yes"
        puts "2: Exit"
        input = gets.chomp
        if input == "1"
            shower_gel()
        end
    end

    def self.reset_all
        @@all.clear
    end
end
