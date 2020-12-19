class CLI
    def run 
        greeting
        menu 
    end

    def greeting 
        system "clear"
        puts "Hello there! Welcome to Tallest Trees! A CLI to learn about scientic details of the tallest trees."
        sleep (1)
        puts "loading...twenty of the World's Tallest Trees"
        sleep(1)
    end 

    def list_trees
        API.new.get_trees
        Tree.all.each.with_index(1) do |tree, i|
            puts "#{i}. #{tree.scientific_name}"
            sleep(1)
        end 
    end 

    def menu 
        list_trees
        input = nil
        while input != "exit"
            puts "Type the number corresponding to tree you are interested in or type 'exit' to leave"
            input = gets.chomp
            if input.to_i > 0 && input.to_i < 21
                tree = Tree.all[input.to_i-1]
                puts "Scientific Name: #{tree.scientific_name}"
                puts "Family Common Name: #{tree.family_common_name}"
                puts "Genus: #{tree.genus}"
                puts "The first year the name of this tree was published: #{tree.year}"
                puts "Publication: #{tree.bibliography}"
                puts "Family: #{tree.family}"
                puts "Click on the link to see how this tree looks: #{tree.image_url}"
            elsif input == "exit"
                goodbye
            else 
                puts "I don't understand. I only accept integers from 1 to 20!"
            end 
        end 
    end 

    def goodbye
        puts "'Tallest Trees' is being terminated...goodbye"
        sleep(2)
        system "clear"
    end
end