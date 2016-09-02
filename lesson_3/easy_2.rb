#Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")

#Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
age_total = 0
ages.each do |name, age|
  age_total += age
end

#Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if {|name, age| age >= 100}

#Question 4
munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

#Question 5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#Question 6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.value.min

#Question 7
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")

#Question 8
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flinstones.index { |name| name[0, 2] == "Be" }

#Question 9
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
  name[0, 3]
end

#Question 10
#Mental note - I did this for the previous question not realizing this question
#would ask forthe 1 line answer. Oops! Ive changed the answers around now to
#reflect both ways.
flintstones.map! { |name| name[0, 3] }
