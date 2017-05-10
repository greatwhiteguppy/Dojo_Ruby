# Consider the following code

# a = {first_name: "Michael", last_name: "Choi"}
# b = {first_name: "John", last_name: "Doe"}
# c = {first_name: "Jane", last_name: "Doe"}
# d = {first_name: "James", last_name: "Smith"}
# e = {first_name: "Jennifer", last_name: "Smith"}
# names = [a, b, c, d, e]
# Copy
# Create a ruby method that goes over each name in the names array and prints something like below.
#
# You have 5 names in the 'names' array
# The name is 'Michael Choi'
# The name is 'John Doe'
# The name is 'Jane Doe'
# The name is 'James Smith'
# The name is 'Jennifer Smith'
def name
    a = {first_name: "Michael", last_name: "Choi"}
    b = {first_name: "John", last_name: "Doe"}
    c = {first_name: "Jane", last_name: "Doe"}
    d = {first_name: "James", last_name: "Smith"}
    e = {first_name: "Jennifer", last_name: "Smith"}
    names = [a, b, c, d, e]
    puts "You have " + names.count.to_s + " names in the 'names' array"
    puts "The name is #{first_name} #{last_name}"
end

name
