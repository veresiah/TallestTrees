class CLI
    def run 
        greeting
        #loop starts here
            puts "loading...twenty of the World's Tallest Trees"
            sleep(1)
            list_trees
            puts "Type the number corresponding to the plant you would like to know more about."
            #user select a number 
            list_tree_details
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

    def list_trees
        API.new.get_trees
        Tree.all.each.with_index(1) do |tree, i|
            puts "#{i}. #{tree.scientific_name}"
        end 
    end 

    def list_tree_details  
        API.new.get_trees 
        Tree.all.each.with_index(1) do |att, i|
           puts "Scientific Name: #{att.scientific_name}"
           puts  "Common Name: #{att.common_name}"
           puts "Family Common Name: #{att.family_common_name}"
           puts "Genus: #{att.genus}"
           puts "The first year the name of this species was published: #{att.year}"
           puts "Bibliography (publication): #{att.bibliography}"
           puts "Family: #{att.family}"
           puts "Synonyms: #{att.synonyms}"
           puts "Click on the link to see how this tree looks: #{att.image_url}"
        end 
    end 
end 
