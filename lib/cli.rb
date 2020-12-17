class CLI
    def run 
        greeting
        menu 
        goodbye
    end

    def greeting 
        system "clear"
        puts "Hello there! Welcome to Tallest Trees! A CLI to learn about scientic details of the tallest trees."
        sleep (1)
        puts "Lets get started"
        puts "loading...twenty of the World's Tallest Trees"
        sleep(1)
        list_trees
    end 

    def list_trees
        API.new.get_trees
        Tree.all.each.with_index(1) do |tree, i|
            puts "#{i}. #{tree.scientific_name}"
        end 
        puts "Type the number corresponding to the tree you would like to know more about."
    end 

    def menu  
        API.new.get_trees 
        user_input = nil
        while user_input != "exit"
            input = gets.strip.to_i-1
            case input 
            when 0..19
                Tree.all.each.with_index(1) do |att, i| 
                    puts "Scientific Name: #{att.scientific_name}"
                    puts  "Common Name: #{att.common_name}"
                    puts "Family Common Name: #{att.family_common_name}"
                    puts "Genus: #{att.genus}"
                    puts "The first year the name of this species was published: #{att.year}"
                    puts "Bibliography (publication): #{att.bibliography}"
                    puts "Family: #{att.family}"
                    puts "Click on the link to see how this tree looks: #{att.image_url}"
                end 
            end 
        end  
    end

    def user_input
        @input = gets.strip.to_i-1
    end 

    def invalid_input 
        if user_input != 0..19
            puts "Invalid selection! Please type a number between 1 and 20 or type exit to terminate"
        end 
    end 

    def goodbye
        puts "'Tallest Trees' is terminated...goodbye"
    end 
end 