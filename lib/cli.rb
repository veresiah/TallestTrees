class CLI
    def run 
        greet
        API.new.get_plant_name
        while input != "end"
        lists_plants
        prompt
        #another_tree?
        #end 
        #bye
    end 

    def greet
        puts "Hello there! Welcome to Tallest Trees! A CLI displaying scientic details for some of the Tallest Trees"
        sleep (1)
        puts "Lets get started"
        sleep (1)
    end 

    def lists_plants
        puts "loading...Twenty of the World's Tallest Trees"
        sleep(2)
        Plant.all.each.with_index(1) do |plant, index|
            puts "#{index}. #{plant.scientific_name}"
        end 
    end  
    
    def lists_tree_details
        Tree.all.each.with_index(1) do |tree, index|
            puts "#{index}. #{tree.attr_accessor}"
        end 
    end 

    def prompt
    user_input = gets.strip
    input = user_input,to_i
    if !input.between? (0,21)
        puts "Invalid number. Please try again"
        sleep(1)
        lists_plants
        prompt
    else 
        plant = Plant.all[input]
        API.new.get_each_tree
        lists_tree_details
    end 


    #def user_input
       # @input = gets.strip
    #end 

    #def bye
       # puts "Goodbye, come again!"
    #end 
end 

CLI.new.run