# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
# INITIAL SOLUTION
=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  i = 0
  list_of_integers.each do |number|
  	if number < lower_bound || number > upper_bound
  		i += 0
  	else
  		i += 1
  	end
  end
  return i	
end
=end

# REFACTORED SOLUTION
def count_between(list_of_integers, lower_bound, upper_bound)
	return list_of_integers.count {|x| x >= lower_bound && x <= upper_bound}
end


