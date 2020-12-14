class Tree
    attr_accessor :common_name, :scientific_name, :genus, :year, :bibliography, :family_common_name, :family, :image_url

    @@all = []

    def initialize(attributes)
        #(common_name, scientifc_name, genus, year, bibliography,family_common_name, family, image_url)
        #@common_name = common_name
        #@scientific_name = scientific_name
        #@genus = genus
        #@year = year
        #@bibliography = bibliography
        #@family_common_name = family_common_name
        #@family = family
        #@image_url = image_url
        
        #@@all << self
    end 

    def self.all
        @@all
    end 
end 
