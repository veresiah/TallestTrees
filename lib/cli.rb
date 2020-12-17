class CLI
    def run 
        greeting
        while @input != "exit"
            list_trees
            user_input 
            list_tree_details
            user_input 
        end 
        goodbye
    end

    def greeting 
        system "clear"
        puts "Hello there! Welcome to Tallest Trees! A CLI to learn about scientic details of the tallest trees."
        sleep (1)
        puts "Lets get started"
        puts "loading...twenty of the World's Tallest Trees"
        sleep(1)
    end 

    def list_trees
        API.new.get_trees
        Tree.all.each.with_index(1) do |tree, i|
            puts "#{i}. #{tree.scientific_name}"
        end 
        puts "Type the number corresponding to the tree you would like to know more about."
        input = nil
    end 
1
    def list_tree_details  #number slected should correspond with the user_input. Currently listing all trees and their attributes 
        API.new.get_trees 
        Tree.all.each.with_index(@input) do |att, i|
           puts "Scientific Name: #{att.scientific_name}"
           puts  "Common Name: #{att.common_name}"
           puts "Family Common Name: #{att.family_common_name}"
           puts "Genus: #{att.genus}"
           puts "The first year the name of this species was published: #{att.year}"
           puts "Bibliography (publication): #{att.bibliography}"
           puts "Family: #{att.family}"
           #puts "Synonyms: #{att.synonyms}"
           puts "Click on the link to see how this tree looks: #{att.image_url}"
        end 
    end 

    def select_another
        puts "Would you like to learn about another tree?"
    end 

    def user_input 
        @input = gets.strip.to_i 
    end 

    def goodbye
        puts "'Tallest Trees' is terminated...goodbye"
        exit
    end 
end 