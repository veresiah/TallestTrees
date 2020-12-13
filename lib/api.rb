require_relative "../config/environment"

class API 
    def initialize 
        @url = "https://trefle.io/api/v1/plants?filter_not%5Bmaximum_height_cm%5D=null&filter%5Bligneous_type%5D=tree&order%5Bmaximum_height_cm%5D=desc&token=#{ENV['API_KEY']}"
    end 
    
    def get_plant_data
        uri = URI.parse(@url) 
        resp = Net::HTTP.get(uri)
        data = JSON.parse(resp) 
        all_trees = data["data"] 
        all_trees.each do |plant| 
            plant.each do |k,v|
                print k,v
            end 
        end 
        Trees.new(plant)
    end 
end 



