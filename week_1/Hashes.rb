x = {"first_name" => "Coding", "last_name" => "Dojo"}
puts x["first_name"], x["last_name"]
puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

# symbol
y = {:first_name => "Coding", :last_name => "Dojo"}
puts "Y is ", y
puts y[:first_name], y[:last_name]

puts "DELETING :first_name"
y.delete :first_name
puts "Y is now", y

if y.has_key? :first_name
    puts "Y has a key called :first_name"
else
    puts "Y does not have a key called :first_name"
end

if y.has_value? "Dojo"
    puts "Y has a value called Dojo"
else
    puts "Y does NOT have a value called Dojo"
end

#Go ahead and try the following methods:
# .delete(key) => deletes and returns a value associated with the key
h = {:first_name => "Coding", :last_name => "Dojo"}
h.delete :last_name
puts "H equals " + h.to_s
puts h.empty?
puts h.has_value? "Coding"
puts h.has_key? :first_name

# As we saw in the example above we can declare a hash using the following syntax:
#our_hash = {:first_name => "Coding", :last_name => "Dojo"}
# In the name of elegance, we now have a new way of creating a hash:
# our_hash = {first_name: "Coding", last_name: "Dojo"}
# No more hash rockets! Well, sort of. The latter syntax is just syntactic sugar to the former way of creating hashes in Ruby.
# At the fundamental level, both are instantiating a new Hash object. We can test this in IRB:

# 2.3.1> our_hash = {first_name: "Coding", last_name: "Dojo"} # press enter
# => {:first_name=>"Coding", :last_name=>"Dojo"}

def new_user first_name: "first", last_name: "last"
  puts "Welcome to our site, #{first_name} #{last_name}!"
end
our_user = {first_name: 'Oscar', last_name: "Vazquez"}
new_user # => "Welcome to our site, first last!"
new_user our_user # => "Welcome to our site, Oscar Vasquez!"

def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"
end
our_user = {first_name: "Oscar", last_name: "Vazquez"}
new_user                  # => Welcome, first last
new_user "Hello", our_user # => Hello, Oscar Vazquez
