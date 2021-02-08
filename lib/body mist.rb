require 'pastel'
require 'pry'

require_relative "../config/environment"

class BodyMist 
    
    attr_reader :price, :name, :url
    
    
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


    # def body_mists(choice)
    #     puts "~~~~ ** BODY SPRAYS & MISTS ** ~~~~~"
    #     puts "Select a fragrance mist you'd like to view." + "\n\n"
    #     self.all.each_with_index do |body_mists, index|
    #         puts "#{index + 1}: #{self.name}"
    #     end
    #     puts "\n"
    #     input = gets.strip
    #     input = input.to_i
    #     if input.is_3? String || input > BodyMist.all.length || input <= 0
    #         puts "Please enter a number shown on screen"
    #     else
    #         input -= 1
    #     end
    #     body_mists_detail(input)
    # end

    # def body_mist_detail(choice)
    #     body_mists_choice = BodyMist.all[choice]
    #     puts "\n"
    #     puts "Name of Fragrance Mist: #{body_mists_choice.name}"
    #     puts "Description: #{body_mists_choice.description}"
    #     puts "Price: #{body_mists_choice.price}"
    #     puts "\n"
    #     puts "Would you like to go back to the previous list?"
    #     puts "1: Yes"
    #     puts "2: Exit"
    #     input = gets.strip
    #     if input == "1"
    #         body_mists()
    #     end
    # end


    def self.reset_all
        @@all.clear
    end
end