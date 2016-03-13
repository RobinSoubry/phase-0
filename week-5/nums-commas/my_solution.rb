# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
	# The input is a non-negative INTEGER that can range from zero to any number of digits
# What is the output? (i.e. What should the code return?)
	# The expected output is a STRING with a comma for every thousand that the input integer could be devided with.
# What are the steps needed to solve the problem?
	# CONVERT the integer to a string.
	# Place comma's on every 1000 that the input digit can be divided with.

# 1. Initial Solution

# def separate_comma(digit)
# 	if digit < 1000
# 		p digit.to_s
# 	elsif digit < 10000
# 		digit = digit.to_s.insert(1, ",")
# 		p digit
# 	elsif digit < 100000
# 		digit = digit.to_s.insert(2, ",")
# 		p digit	
# 	elsif digit < 1000000
# 		digit = digit.to_s.insert(3, ",")
# 		p digit
# 	elsif digit < 10000000
# 		digit = digit.to_s.insert(1, ",").insert(5, ",")
# 		p digit
# 	elsif digit < 100000000
# 		digit = digit.to_s.insert(2, ",").insert(6, ",")
# 		p digit
# 	else
# 		p "Digit is to large"
# 	end 
# end

# separate_comma(8)
# separate_comma(3401)
# separate_comma(34091)
# separate_comma(340912)
# separate_comma(3409124)
# separate_comma(34091241)

# 2. Refactored Solution
def separate_comma(digit)
	digit_s = digit.to_s.split(//)
	comma_separated_array = Array.new
	while digit_s.length > 3
		comma_separated_array.unshift(digit_s.pop(3))
		comma_separated_array.unshift(",")
	end
	comma_separated_array.unshift(digit_s)
	comma_separated_string =  comma_separated_array.join
	return comma_separated_string
end

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
	* I took some example digits to identify how exactly the thousands separator works.
		For example the series of full three digits start at the right, not on the left… so several methods (like slice) may be more complex to use.
	* Secondly I wrote down the essential steps to get the output:
	  	* converting the integer to a string
	  	* inserting comma's before every series of three digits, starting from the right

Was your pseudocode effective in helping you build a successful initial solution?
	* For the initial solution: Yes, I took a very simple approach to the first solution (using if elsif and else statements for each of the rspec cases)
		Within these statements, I was able to apply the exact two steps of the pseudo-code.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
	* My initial solution was a quick-fix to the rspec file, but not very effient or scalable to very large integers.
	* So I tried to create a simple logic that would work for any entry number. To do so, I used two new methods:
		.split: Converts the number_string to an array with each letter as an array-element.
		.pop(3): The .pop(3) method takes blocks of three array elements from the end of the array, which I then add to the comma_separated_array with .unshift
		.unshift: The unshift method is used to add new array elements to the front of the array. This is used to insert blocks of three digits from the original array and as well to add the "," before them.
		.join: The join method converts the comma_separated_array to a string.

How did you initially iterate through the data structure?
	* No. The initial solution was based on if, elsif and else statements based on the number of digits in the input integer.

Do you feel your refactored solution is more readable than your initial solution? Why?
	* Not really. The initial solution is very straightforward in readibility, but is unfortunately not efficient code.
	* The refactored solution is much more efficient, but because of the more complex manipulations, also harder to read.
=end