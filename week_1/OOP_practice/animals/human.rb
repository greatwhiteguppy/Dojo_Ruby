puts 'I am in the human file'
require_relative 'mammal'

class Human < Mammal
    def explicitily_cry
      self.cry
    end

    def implicitily_cry
      cry
    end
end
person = Human.new
