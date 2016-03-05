# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below
ORIGINAL CODE
=begin
def array_concat(array_1, array_2)
  array_1.push(*array_2)
end
=end

REFACTORED CODE
def array_concat(array_1,array_2)
	array_1.concat array_2
end