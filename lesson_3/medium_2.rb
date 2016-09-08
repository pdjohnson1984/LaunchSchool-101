#Question 1
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
total_male_age = 0
munsters.each do |name, stats|
  if stats["gender"] == "male"
    total_male_age += stats["age"].to_i
  end
end

#Question 2
munsters.each_pair do |name, stats|
  puts "#{name} is a #{stats['age']} year old #{stats['gender']}"
end

#Question 3
def not_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#Question 4
sentence = "Humpty Dumpty sat on a wall."
backwards_sentence = sentence.split.reverse.join(' ')

#Question 5
#34

#Question 6
#Yes, the data gets ransacked because += and = are setters, therefore mutating
#the data. Also because the munsters has is being passed in by-ref.

#Question 7
#The result is paper. Outter most functions are called first.

#Question 8
