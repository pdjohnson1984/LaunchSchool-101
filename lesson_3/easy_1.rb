#Question 1
[1, 2, 2, 3]
#did not mutate the caller. Must call uniq! if numbers variable should change

#Question 2
#! and ? in method names doesn't do anything by itself, but usually denotes
#that a mutation occurs or checks for truthiness, respectively. However,
#! before a variable returns the truthiness of that variable, whereas !! returns
#the opposite of its truthiness. a ? : is a ternary operator and != means not
#equals.

#Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

#Question 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) #This will return:
[1, 3, 4, 5]
numbers.delete(1) #And this will return:
[2, 3, 4, 5]
#delete_at deletes at the index, where delete looks for the value

#Question 5
(10..100).cover?(42)

#Question 6
famous_words = "seven years ago..."
"Four score and " + famous_words
#or
"Four score and " << famous_words

#Question 7
#This 'recursion' is done 5 times, so that's 40, + the starting number of 2,
#to give us a total of 42

#Question 8
flintstones.flatten!

#Question 9
flintstones.assoc("Barney")

#Question 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_hash = {}
flintstones.each_with_index do |name, index|
  new_hash[name] = index
end
