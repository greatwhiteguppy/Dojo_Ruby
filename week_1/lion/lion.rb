require_relative 'mammal'

class Lion < Mammal
    def initialize
        super
        @health = 170
    end

    def display_health
        puts "This is a lion"
        super
    end

    def fly i
        @health -=10*i
        self
    end

    def attack_town i
        @health -=50*i
        self
    end

    def eat_humans i
        @health +=20*i
        self
    end

end

# l = Lion.new.display_health
l = Lion.new.attack_town(3).eat_humans(2).fly(2).display_health
