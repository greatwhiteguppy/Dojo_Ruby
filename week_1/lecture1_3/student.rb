class Student
    attr_reader :name, :skill
    attr_accessor :fav
    def initialize name, skill, fav="Ruby" #making Ruby a default fave for a student if one isn't entered
        @name = name #left name, instance variable, right side, pulling in
        @fav = fav
        @skill = 100
    end

    def talk
        puts "Hello, I'm #{@name}"
        self
    end

    def pick_up_stack stack
        puts stack
        @skill +=25
        self
    end
end

s1 = Student.new("Sammi", "n00b", "Ruby")
# s1.fav = "Javascript"
puts s1.fav
puts s1.name
puts s1.skill
s1.talk
s1.pick_up_stack("Python").talk #chaining because self 
puts s1.skill
