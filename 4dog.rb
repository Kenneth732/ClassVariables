class Dog
    @@number_of_dogs = 0

    def initialize(name)
        @name = name 
        @@number_of_dogs += 1
    end
    def self.number_of_dogs
        @@number_of_dogs
    end
end

fido = Dog.new("Fido")
rover = Dog.new("Rover")
puts Dog.number_of_dogs
