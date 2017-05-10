a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]
d = [2, 5, 10, 1,-50]
e = ["Super", "cala","fraja", "listic", "expiali" "docious"]


puts a[0]
puts a[1]


puts b.class
puts b.shuffle.join("-")


puts a.to_s


a.delete("Dojo")
puts a

b.reverse
b.length


d.sort


b.slice!(1)
b


puts a.shuffle.join(" *~* ")


puts e
e.join
e.insert(0, 'Mary Poppins says: ')
puts e.join


e.values_at(0,2,4)
