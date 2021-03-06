class Animal
    attr_accessor :name, :owner
    attr_reader :species
    @@all = []

    def initialize(name, species, owner=nil)
        @name = name
        @species = species
        @age = 20
        @owner = owner
        @obedience = 0
        @@all << self
    end

    def self.find_by_name(query)
        Animal.all.find do |animal|
            animal.name == query
        end
    end

    def self.find_by_species(species)
        self.all.filter do |animal|
            animal.species == species
        end
    end

    def self.all
        @@all
    end
end