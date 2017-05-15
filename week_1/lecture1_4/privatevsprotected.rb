# protected - methods that can only be called within the class and subclasses either explicitly or implicitly. No instance usage!

# private - methods that can only be called within the class and subclasses implicitly. No instance usage!

class Human
  attr_accessor :name, :location
  @@no_of_humans = 0
  def initialize name, location
    @name = name
    @location = location
  end

  private # allows implicit not explicit
  def talk
    puts "Hi I'm #{@name}"
    self
  end
end

class Coder < Human
    def workaround
        talk      # implicit because the Coder class is actually invoking talk
        self.talk # explicit because self is in reference to the instance
        code_like_crazy # implicit works
        self.code_like_crazy # explicit works
    end

  protected # allows implicit and explicit
    def code_like_crazy
        puts "I'm crushing some code!"
    end
end
c = Coder.new("Sammi","Milwaukee")
c.workaround
