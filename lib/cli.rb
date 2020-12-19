class CLI
    def run 
        greeting
        menu 
    end

    def greeting 
        system "clear"
        puts "Hello there! Welcome to Tallest Trees!".colorize(:green).colorize(:background => :blue)
        puts "A CLI displaying details about some of the world's tallest trees.".colorize(:green).colorize( :background => :blue)
        sleep (1)
        puts "Let's get started!".green 
        sleep(1)
        puts "loading...twenty of the World's Tallest Trees".blink.red
    end 

    def list_trees
        API.new.get_trees
        Tree.all.each.with_index(1) do |tree, i|
            puts "#{i}. #{tree.scientific_name}".light_green
            sleep(1)
        end 
    end 

    def menu 
        list_trees
        input = nil
        while input != "exit"
            puts "Type the number corresponding to the tree that you are interested in or type 'exit' to leave".yellow
            input = gets.strip
            if input.to_i > 0 && input.to_i < 21
                tree = Tree.all[input.to_i-1]
                puts "Scientific Name: #{tree.scientific_name}".italic.bold.green
                puts "Family Common Name: #{tree.family_common_name}".light_blue
                puts "Genus: #{tree.genus}".light_blue
                puts "The first year the name of this tree was published: #{tree.year}".light_blue
                puts "Publication: #{tree.bibliography}".light_blue
                puts "Family: #{tree.family}".light_blue
                puts "Click on the link (if provided) to see how this tree looks: #{tree.image_url}".magenta
            elsif input == "exit"
                goodbye
            else 
                puts "I do not understand. I only accept integers from 1 to 20! or 'exit'".yellow
            end 
        end 
    end 
    def goodbye
        puts "'Tallest Trees' is being terminated...goodbye".red
        sleep(2)
        system "clear"
    end
end