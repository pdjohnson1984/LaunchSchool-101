#Question 1
#The id is reused for a_outer and d_outer. Once inside the block, no id's have
#been modified. However, once new values have been assigned to the variables,
#so have new id's been assigned as well.

#Question 2
#Using the input paramaters uses the same object ids

#Question 3
#my_string returns "pumpkins", and my_array returns ["pumpkins", "rutabaga"]
#the string operation += creates a new object, where the array operator
#reuses the same object to append the new element to

#Question 4
#The opposite of the previous question. For arrays, the = operator does
#create a new internal variable, whereas the << operator for strings simply
#appends the text to the end of the pre exisiting variable

#Question 5
#Ruby already has truthiness, so anything that's not nil or false is true. This
#can be reweritten without the if block
def color_valid(color)
  color == "blue" || color == "green"
end
