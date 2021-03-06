class API
    def initialize 
        @url = "https://trefle.io/api/v1/plants?filter_not%5Bmaximum_height_cm%5D=null&filter%5Bligneous_type%5D=tree&order%5Bmaximum_height_cm%5D=desc&token=#{ENV['API_KEY']}"
    end 
    
    def get_trees
        uri = URI.parse(@url) 
        resp = Net::HTTP.get(uri)
        data = JSON.parse(resp) 
        tree_data = data["data"] 
        tree_data.each do |tree_hash|
            scientific_name = tree_hash["scientific_name"]
            family_common_name = tree_hash["family_common_name"]
            genus = tree_hash["genus"]
            year = tree_hash["year"]
            bibliography = tree_hash["bibliography"]
            family = tree_hash["family"]
            image_url = tree_hash["image_url"]
            Tree.new(scientific_name,family_common_name, genus, year, bibliography, family, image_url)
        end 
    end 
end