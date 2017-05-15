class Mammal
    def initialize health=150
        @health = health
    end

    def display_health
        puts @health
        self
    end
end

# m = Mammal.new.display_health
