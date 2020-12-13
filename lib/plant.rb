require_relative "../config/environment"

class Plant
    attr_accessor :scientific_name 

    @@all = []

    def initialize(scientific_name)
        @scientific_name = scientific_name
        @@all << self
    end 

    def self.all
        @@all
    end 
end 