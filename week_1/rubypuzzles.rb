# 1. Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array.
# Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array
# above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
def sum_and_greater
    array = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
    puts array.reduce(:+)
    array.reject {|num| num < 10 }.to_a.join(" ")
end
puts sum_and_greater
# e.g. (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
# 2. Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher.
# Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
def shuffle
    arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
    puts arr.shuffle.to_a.join(" ")
    arr.reject! {|x| x.length > 5}.to_a.join(" ")
end
puts shuffle
# 3. Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
# Shuffle the array and display the last letter of the array. Have it also display the first letter of the array.
# If the first letter in the array is a vowel, have it display a message.
def alphabet
    array = ("a".."z").to_a
    newarray = array.shuffle
    # puts newarray.join(" ")
    puts newarray.first
    puts newarray.last
end
puts alphabet
# 4. Generate an array with 10 random numbers between 55-100.
def random1
    array = Array.new(10) { rand(55..100) }
    puts array.join(" ")
end
puts random1
# 5. Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning).
#Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
def random2
    array2 = Array.new(10) {rand(55..100)}
    puts array2.sort.join(" ")
    puts "The minimum number is " + array2.min.to_s + " And the maximum is " + array2.max.to_s + "."
end
puts random2
# 6. Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
puts (0...5).map { (65 + rand(26)).chr }.join
# 7. Generate an array with 10 random strings that are each 5 characters long
def randomstrings
    string_array = []
    10.times do
        randomstring = ""
        5.times {randomstring << rand(65..90).chr}
        string_array << randomstring
    end
    puts string_array.join(" ")
end
puts randomstrings
