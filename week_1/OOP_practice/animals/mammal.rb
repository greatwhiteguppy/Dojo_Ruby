puts 'I am in the mammal file'

class Mammal
    def initialize
      puts "I am alive"
      self
    end
    def breath
      puts "Inhale and exhale"
      self
    end

    def who_am_i
      # printing the current object
      puts self
      self
    end
end
