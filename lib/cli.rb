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
        puts "\nSelect an option between 1 and 4 for the the products that you'd like to see. Type 'option' to see the options again, or type 'exit' to leave."
        input = gets.strip
            if input.to_i > 0 && input.to_i < 5
                puts "Here's our inventory for option #{input}! Happy Shopping!"
            end

            if input == "1"
                CLI.create_body_cream
                CLI.body_cream
            elsif input == "2"
                CLI.create_shower_gel
                CLI.shower_gel
            elsif input == "3"
                CLI.create_body_lotion
                CLI.body_lotion
            elsif input == "4"
                CLI.create_body_mists
                CLI.body_mists
            elsif input == "exit"
                self.exit
            end
    end      
               
    def exit
        abort "We'll catch you later! Until next time!"
    end


    def self.create_body_cream
        Scraper.get_body_cream
    end
    
    def self.create_shower_gel
        Scraper.get_shower_gel
    end

    def self.create_body_mists
        Scraper.get_body_mists
    end

    def self.create_body_lotion
        Scraper.get_body_lotion
    end


    def self.body_cream
        puts "~~~~ ** BODY CREAMS  ** ~~~~~"
        puts "Select a body cream you'd like to view." 
        BodyCream.all.each_with_index do |body_cream, index|
            puts "#{index + 1}: #{body_cream.name}"
        end
        puts "\n"
        puts "Please enter a number shown on screen"
        input = gets.strip
        input = input.to_i
        self.body_cream_detail(input)
    end

    def self.body_cream_detail(input)
        body_cream_choice = BodyCream.all[input-1]
        puts "\n"
        puts "Name of Body Cream: #{body_cream_choice.name}"
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
               
    def self.shower_gel
        puts "~~~~ ** SHOWER GELS ** ~~~~~"
        puts "Select a shower gel you'd like to view." + "\n\n"
        self.all.each_with_index do |shower_gel, index|
            puts "#{index + 1}: #{shower_gel.name}"
        end
        puts "\n"
        puts "Please enter a number shown on screen"
        input = gets.strip
        input = input.to_i
        self.shower_gel_detail(input)
    end

    def self.shower_gel_detail(input)
        shower_gel_choice = ShowerGel.all[input-1]
        puts "\n"
        puts "Name of Fragrance Mist: #{shower_gel_choice.name}"
       
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
    
    def self.body_lotion(input)
        puts "~~~~ ** BODY LOTION ** ~~~~~"
        puts "Select a body lotion you'd like to view." + "\n\n"
        self.all.each_with_index do |body_lotion, index|
            puts "#{index + 1}: #{body_lotion.name}"
        end
        puts "\n"
        puts "Please enter a number shown on screen"
        input = gets.strip
        input = input.to_i
        self.body_lotion_detail(input)
    end

    def self.body_lotion_detail(input)
        body_lotion_choice = BodyLotion.all[input-1]
        puts "\n"
        puts "Name of Fragrance Mist: #{body_lotion_choice.name}"
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
    
    def self.body_mists(input)
        puts "~~~~ ** BODY SPRAYS & MISTS ** ~~~~~"
        puts "Select a fragrance mist you'd like to view." + "\n\n"
        self.all.each_with_index do |body_mists, index|
            puts "#{index + 1}: #{body_mists.name}"
        end
        puts "\n"
        puts "Please enter a number shown on screen"
        input = gets.strip
        input = input.to_i
        self.body_mist_detail(input)
    end

    def self.body_mist_detail(input)
        body_mists_choice = BodyMist.all[input-1]
        puts "\n"
        puts "Name of Fragrance Mist: #{body_mists_choice.name}"
        puts "Price: #{body_mists_choice.price}"
        puts "\n"
        puts "Would you like to go back to the previous list?"
        puts "1: Yes"
        puts "2: Exit"
        input = gets.strip
        if input == "1"
            body_mists()
        end
    end

end
