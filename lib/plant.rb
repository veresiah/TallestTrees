require_relative "../config/environment"

class Plant
    attr_accessor :common_name, :scientific_name 

    @@all = []

    def initialize(common_name, scientifc_name)
        @common_name = common_name
        @scientific_name = scientific_name
        @@all << self
    end 

    def self.all
        @@all
    end 
end 