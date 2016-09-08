#Question 1
#local variable is being declared in the if block, but should still return nil.

#Question 2
#"hi there". formal_greeting a reference to the greetings variable. When the
#formal_greeting variable was mutated, it was mutating the variable greetings.
#This is due to the fact that << mutates the caller.

#Question 3
#A)For strings, this does not mutate the variables in the scope of the method
#one = "one"
#two = "two"
#three = "three"

#B)Same results as A, however it comes down to the = assignment operator

#C)This is different as gsub! mutates the caller and does not return a new
#variable

#Question 4
def create_uuid()
  characters = []
  ('a'..'z').each { |let| characters << let}
  ('0'..'9').each { |num| characters << num}

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |num, index|
    num.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

#Question 5
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.count == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word)
  end
  true
end
