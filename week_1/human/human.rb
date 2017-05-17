
class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
  # The human class should have 4 attributes:
  # strength, intelligence, stealth, and health.
  # Give the human a default value of 3 for strength, stealth and intelligence.
  # Health should have a default value of 100.

  def health
      puts @health
      self
  end

  def attack(prey)
      puts "This is an attack"
      if prey.class.ancestors.include?(Human)
          puts "Attacking the object"
          prey.health -= 10
          true
      else
          false
      end
  end
end

h1 = Human.new.health
h2 = Human.new.health
puts h1.attack(h2)
puts h1.attack("Something not human")
puts h2.health # still not getting this to show up as 90 
# Add a new method called attack, which when invoked,
# should attack another object (i.e., decrease its health)
# if the object it is attacking inherits from the Human class.
# Hint: you can check ancestors of a object by using .class.ancestors
