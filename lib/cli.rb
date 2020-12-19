class CLI
    def run 
        greeting
        list_trees
        menu 
        goodbye
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
        end
        sleep(1) 
        puts "Type the number of the tree you would like to know more about."
    end 

    def menu 
        @input = nil
        @input = user_resp.to_i-1
        if !@input.between?(0,19)
            puts "Invalid selection! Loading...trees" 
            list_trees
        else 
            #method to get a tree detail by index. 
        end 
    end 

    def user_resp
        @input = gets.chomp
    end 
    
    def goodbye
        puts "'Tallest Trees' is terminated...goodbye"
        system "clear"
    end
end