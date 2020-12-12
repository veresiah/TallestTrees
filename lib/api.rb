require_relative "../config/environment"

class API 
    def initialize 
        @url = "https://trefle.io/api/v1/plants?filter_not%5Bmaximum_height_cm%5D=null&filter%5Bligneous_type%5D=tree&order%5Bmaximum_height_cm%5D=desc&token=#{ENV['API_KEY']}"
    end 
    
    def all_plant_data
        uri = URI.parse(@url) 
        resp = Net::HTTP.get(uri)
        format_resp = JSON.parse(resp)
    end
end 
    
API.new.all_plant_data

