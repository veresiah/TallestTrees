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
            common_name = plant["common_name"]
            scientific_name = plant["scientific_name"]
            Plant.new(common_name, scientific_name)
        end
    end 

    def get_each_tree
        uri = URI.parse(@url) 
        resp = Net::HTTP.get(uri)
        data = JSON.parse(resp) 
        tree_data = data["data"] 
        common_name = tree_data[0]["common_name"]
        scientific_name = tree_data[0]["scientific_name"]
        genus = tree_data[0]["genus"]
        year = tree_data[0]["year"]
        bibliography = tree_data[0]["bibliography"]
        family_common_name = tree_data[0]["family_common_name"]
        family = tree_data[0]["family"]
        image_url = tree_data[0]["image_url"]
        Tree.new(common_name, scientific_name, genus, year, bibliography, family_common_name,image_url)
        end
    end 
end 



