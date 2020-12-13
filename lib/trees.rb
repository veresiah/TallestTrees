class Trees
    attr_accessor :common_name, :scientific_name, :family_common_name, :bibliography, :genus, :family, :image_url
   
    @@all = []

    def initialize(attributes)
        attributes.each do |k, v| 
          self.class.attr_accessor(k)
          self.send(("#{k}="), v)
        end
        @@all << self
    end

    def self.all
        @@all
    end 
end 

