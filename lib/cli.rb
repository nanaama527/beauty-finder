require_relative "../lib/cli"


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
    end
end