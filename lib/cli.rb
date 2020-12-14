class CLI
    def run 
        greeting
        #loop starts here
            API.new.get_plant_name
            puts "loading...twenty of the World's Tallest Trees"
            sleep(1)
            lists_plants
            puts "Type the number corresponding to the plant you would like to know more about."
            #user select a number 
            API.new.get_each_tree #problem
            #displays data accordingly 
            #user selects another number (Y/N)
            #lists_plants displayed if yes and exit if no 
            #exit 
    end

    def greeting 
        puts "Hello there! Welcome to Tallest Trees! A CLI to learn about scientic details of the tallest trees."
        sleep (1)
        puts "Lets get started"
    end 

    def lists_plants
        Plant.all.each.with_index(1) do |plant, index|
            puts "#{index}. #{plant.scientific_name}"
        end 
    end 
end 