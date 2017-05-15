class MathDojo
    attr_reader :result
  # your code here

  def initialize result=0
      @result = result
  end

  def add *i
    @result += i.flatten.reduce(0, :+)  # flatten works to flatten arrays, and reduce combines integers
    self
  end

  def subtract *i
    @result -= i.flatten.reduce(0, :+)
    self
  end

end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
puts challenge1
puts challenge2


# def splatting *params
# params
# end
# puts splatting(1).inspect # => [1]
# puts splatting(1, 2, 3, 4, 5).inspect # => [1, 2, 3, 4, 5]
# # => All the arguments are condensed into a single array.
