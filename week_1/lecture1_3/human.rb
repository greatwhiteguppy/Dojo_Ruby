class Human
    attr_accessor :name, :location #takes our name and location and performs work to create 2 methods,
    #one for getting and one for setting values
    # attr_reader and attr_writer are two others
    def initialize name, location
        @name = name
        @location = location
    end

    def talk
        puts "Hi I'm #{@name}"
        self #method chaining enabled with this
    end
end

h1 = Human.new("Todd", "Seattle") #even if the name ane location were the same, the instances are different
h2 = Human.new("Jim", "Renton")
puts h1, h2  # as evidenced by "puts"
# h1.name # this would break it, thinking it's a method
puts h1.name
puts h2.name
h1.name = "Sammi" # will change the h1.name
puts h1.name
h1.talk.talk.talk.talk # output - "Hi I'm Sammi"
class Array
    def do_something
    end
end 
