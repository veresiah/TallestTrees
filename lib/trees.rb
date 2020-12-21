class Tree
    attr_accessor :scientific_name, :common_name,:family_common_name, :genus, :year, :bibliography, :family, :image_url
    
    @@all = []

    def initialize(scientific_name, family_common_name, genus, year, bibliography, family, image_url)
        @scientific_name = scientific_name
        @family_common_name = family_common_name
        @genus = genus
        @year = year
        @bibliography = bibliography
        @family = family
        @image_url = image_url
        save
    end  

    def self.all
        @@all
    end 

    def save
        @@all << self
    end 

     # expand? to add queries from tree lists. 
    #def self.find_all_by_scientifc_name(input)
        #Tree.all.select do |tree| 
            #tree.scientific_name.include? input 
        #end
    #end
end 
