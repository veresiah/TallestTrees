#class CLI
    #def run 
        #greet
         #while @input != "end"
            #d#isplay_trees
            #user_input
            #display_tree_attr
            #another_tree?
         #end 
         #bye
    #end 

    #def greet
        #p#uts "Hello there! Welcome to Tallest Trees! A CLI displaying scientic details for some of the Tallest Trees"
        #sleep (1)
        #puts "Lets get started"
        #sleep (1)
    #end 

    #def display_trees
        #Trees.all
    #end
    
    #def display_tree_attr
        #Trees.new_tree_from_plant(input)
    #end 

    #def user_input
       # @input = gets.strip
    #end 

    #def bye
       # puts "Goodbye, come again!"
    #end 
#end 

#CLI.new.run