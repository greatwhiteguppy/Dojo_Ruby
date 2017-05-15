module MyEnumerable
  def my_each
    for item in 0..self.length
        yield(self[item]) #yield is the key to allowing i*i to work
    end
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40
