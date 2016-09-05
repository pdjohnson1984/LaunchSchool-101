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
def factors(number)
  dividend = number
  divisors = []
  number.times do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end
#The purpose of number % dividend == 0 is to find any number which evenly
#divides into the number

#The last line makes sure the divisors array is returned from the factors
#method

#Question 6
#Mutation happens on buffer in the first example. The second example does not
#mutate the input variable

#Question 7
#The variable needs to be within the scope of the method. Pass it in as a input
#paramater like below
limit = 15
def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

#Question 8
def my_titleize(sentence)
  sentence.split(' ').map { |word| word.capitalize }.join(' ')
end

#Question 9
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.each_pair do |munster, stats|
  case stats["age"]
  when (0..17)
    stats["age_group"] = "kid"
  when (18..64)
    stats["age_group"] = "adult"
  else
    stats["age_group"] = "senior"
  end
end
