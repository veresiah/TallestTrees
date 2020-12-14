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

    def get_each_tree  #not getting to extract each key associating with the value (details) that is needed 
        uri = URI.parse(@url) 
        resp = Net::HTTP.get(uri)
        data = JSON.parse(resp) 
        tree_data = data["data"] 
        tree_data.each do |plant|
            tree_data.each do |plant, properties|
                puts "#{plant}: #{properties}"
            end 
        end 
    end 
end 