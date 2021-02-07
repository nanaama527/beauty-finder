require 'pastel'
require 'pry'

require_relative "../config/environment"


class BodyCream

    attr_accessor :name, :price

    @@all = []
    
    def initialize
       @@all << self
    end

    def self.all
        @@all
    end

    def body_cream(choice)
        puts "~~~~ ** BODY CREAMS  ** ~~~~~"
        puts "Select a fragrance mist you'd like to view." + "\n\n"
        self.all.each_with_index do |body_cream, index|
            puts "#{index + 1}: #{self.name}"
        end
        puts "\n"
        input = gets.strip
        input = input.to_i
        if input.is_3? String || input > BodyCream.all.length || input <= 0
            puts "Please enter a number shown on screen"
        else
            input -= 1
        end
        body_cream_detail(input)
    end

    def body_cream_detail(choice)
        body_cream_choice = BodyCream.all[choice]
        puts "\n"
        puts "Name of Fragrance Mist: #{body_cream_choice.name}"
        puts "Description: #{body_cream_choice.description}"
        puts "Price: #{body_cream_choice.price}"
        puts "\n"
        puts "Would you like to go back to the previous list?"
        puts "1: Yes"
        puts "2: Exit"
        input = gets.chomp
        if input == "1"
            body_cream()
        end
    end

    def self.reset_all
        @@all.clear
    end


end