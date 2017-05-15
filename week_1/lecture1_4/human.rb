class Human
    attr_accessor :name, :location

    def initialize name, location
        @name = name
        @location = location
    end
    def talk
        puts "Hi I'm #{@name}"
        self
    end
end
