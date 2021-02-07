require_relative "../lib/scraper"

class CLI
    
    def welcome
        puts "Hey, Beautiful! Welcome to your one-stop shop for all your bath and body needs!"
        puts " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
        self.prompt_for_firstname
    end

    def prompt_for_firstname
        puts "Please enter your first name:"
        input = gets.strip
        self.options
    end

    def options
        puts "We have the best selection for body and fragrance products. Which items can we help you look for today?"
        puts "For 'Body Cream', press 1."
        puts "For 'Shower Gels', press 2."
        puts "For 'Body Sprays & Mists', press 3."
        puts "For 'Body Lotions', press 4."
        self.select_option
    end

    def select_option
        input = nil
        while input != "exit"
            puts "\nSelect an option between 1 and 4 for the the products that you'd like to see. Type 'option' to see the options again, or type 'exit' to leave."
            input = gets.strip

            if input.to_i > ) && 
                






end