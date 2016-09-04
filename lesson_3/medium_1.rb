#Question 1
flintstones = "The Flintstones Rock!"
(1..10).each { |n| puts(flintstones.rjust(flintstones.length + n)) }

#Question 2
statement = "The Flintstones Rock"
flintstone_letters = Hash.new(0)
statement.each_char { |chr| flintstone_letters[chr] += 1 }
puts(flintstone_letters)
#This also counts spaces. I like it left in as a space is a character :)

#Question 3
#add to_s to (40 + 2). So it would look like:
puts "the value of 40 + 2 is " + (40 + 2).to_s
#string interpolation also works here:
puts "the value of 40 + 2 is #{40 + 2}"

#Question 4
#Using shift in the loop returns [1,3]
#Using pop in the loop returns [1,2].

#Question 5
