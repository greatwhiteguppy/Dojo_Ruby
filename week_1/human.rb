class Human
    def initialize name, location
        @name = name
        @location = location
    end
end

h1 = Human.new("Todd", "Seattle") #even if the name ane location were the same, the instances are different
h2 = Human.new("Jim", "Renton")
puts h1, h2  # as evidenced by "puts"
h1.name 
