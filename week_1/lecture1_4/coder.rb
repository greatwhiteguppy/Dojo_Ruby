require_relative 'human'
class Coder < Human #inherit, so we can do everything a human can do
    def workaround
        code_like_crazy
    end

    def talk
        super # go to the parent first (Human)
        puts "Hello"
    end
    protected
        def code_like_crazy
            puts "I'm crushing some code!"
        end

        def type
        end

end

c = Coder.new("Sammi", "Milwaukee") #need to put in name and location
# 2 arguments, otherwise you get an error from both files (initialize and coder.rb file)
c.talk #output = "Hi I'm Sammi"
puts c.class.ancestors
# c.code_like_crazy #can't call it, no-method error when categorized as private
c.workaround #method to call a protected class
