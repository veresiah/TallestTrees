require_relative "../config/environment"

class API
    def initialize 
        @url = "https://trefle.io/api/v1/plants?filter_not%5Bmaximum_height_cm%5D=null&filter%5Bligneous_type%5D=tree&order%5Bmaximum_height_cm%5D=desc&token=#{ENV['API_KEY']}"
    end 
    
    def get_plant_name
        uri = URI.parse(@url) 
        resp = Net::HTTP.get(uri)
        data = JSON.parse(resp) 
        tree_data = data["data"] 
        tree_data.each do |plant|
            scientific_name = plant["scientific_name"]
            Plant.new(scientific_name)
        end
    end 

    def get_each_tree
        uri = URI.parse(@url) 
        resp = Net::HTTP.get(uri)
        data = JSON.parse(resp) 
        tree_data = data["data"] 
        tree_data.each do |plant|
            tree_data.map do |plant, attributes|
                Tree.new(attributes)
            end 
        end 
        #common_name = tree_data["common_name"]
        #
        #tree_data.each do |plant|
            #scientific_name = tree_data["scientific_name"]
        #end 
        #tree_data.each do |plant|
            #genus = tree_data["genus"]
        #end 
        #tree_data.each do |plant|
            #year = tree_data["year"]
        #end
        #tree_data.each do |plant|
            #bibliography = tree_data["bibliography"]
        #end 
        #tree_data.each do |plant|
            #family_common_name = tree_data["family_common_name"]
        #end 
        #t#ree_data.each do |plant|
            #family = tree_data["family"]
        #end 
        #tree_data.each do |plant|
            #image_url = tree_data["image_url"]
        #end 
    end 
end 