x = (1..5)


puts "Class Name:" #{x.class}


puts "It does include 3!"if x.include? 3


puts "The last number of this range is " + x.last.to_s
puts "The maximum number of this range is " + x.max.to_s
puts "The minimum number of this range is " + x.min.to_s


y = (1..51088)


puts "It does include 5000" if y.include? 5000
puts "The last number range is my birthday " + y.last.to_s
puts "The maximum number of this range is the same as the last: " + y.max.to_s
puts "The minimum number of this range is so small: " + y.min.to_s
