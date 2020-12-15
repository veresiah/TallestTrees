class Tree
    attr_accessor :scientific_name, :common_name,:family_common_name, :genus, :year, :bibliography, :family, :synonyms, :image_url

    @@all = []

    def initialize(scientific_name, common_name,family_common_name, genus, year, bibliography, family, synonyms, image_url)
        @scientific_name = scientific_name
        @common_name = common_name
        @family_common_name = family_common_name
        @genus = genus
        @year = year
        @bibliography = bibliography
        @family = family
        @synonyms = synonyms
        @image_url = image_url
        
        @@all << self
    end 

    def self.all
        @@all
    end 
end 
