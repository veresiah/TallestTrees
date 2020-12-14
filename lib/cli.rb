class CLI
    def run 
        greeting
        while @input != "end"
            API.new.get_plant_name
            puts "loading...twenty of the World's Tallest Trees"
            sleep(1)
            lists_plants
            puts "Type the number corresponding to the plant you would like to know more about."
            user_input = gets.chomp
        end 
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

    #def user_response
        #@input = gets.strip
   # end 

    #def bye
        #puts "Goodbye, please come again!"
    #end

 
