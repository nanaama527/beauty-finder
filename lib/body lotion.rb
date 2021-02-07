require 'pastel'
require 'pry'

require_relative "../lib/scraper"
require_relative "../lib/cli"

class BodyLotion 
    @@all = []
    
    def initialize
       @@all << self
    end

    def self.all
        @@all
    end

    def body_lotion(choice)
        puts "~~~~ ** BODY LOTION ** ~~~~~"
        puts "Select a body lotion you'd like to view." + "\n\n"
        self.all.each_with_index do |body_lotion, index|
            puts "#{index + 1}: #{self.name}"
        end
        puts "\n"
        input = gets.chomp
        input = input.to_i
        if input.is_3? String || input > BodyLotion.all.length || input <= 0
            puts "Please enter a number shown on screen"
        else
            input -= 1
        end
        body_lotion_detail(input)
    end

    def body_lotion_detail(choice)
        body_lotion_choice = BodyLotion.all[choice]
        puts "\n"
        puts "Name of Fragrance Mist: #{body_lotion_choice.name}"
        puts "Description: #{body_lotion_choice.description}"
        puts "Price: #{body_lotion_choice.price}"
        puts "\n"
        puts "Would you like to go back to the previous list?"
        puts "1: Yes"
        puts "2: Exit"
        input = gets.chomp
        if input == "1"
            body_lotion()
        end
    end

    def self.reset_all
        @@all.clear
    end
end