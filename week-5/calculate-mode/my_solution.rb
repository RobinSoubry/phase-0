# Calculate the mode Pairing Challenge

# I worked on this challenge with Kelson Adams

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
	# The input is an array of numbers or strings

# What is the output? (i.e. What should the code return?)
	# The code should return an array of the input value that has the most frequent occurence.
	# If the input-values have an equal number of occurences, the original array should be returned.

# What are the steps needed to solve the problem?
	# GROUP the array by the number of occurences of a value.
	# RETURN the set of values with the highest number of occurences.

# 1. Initial Solution
=begin
def mode (array)
	include Enumerable
	count = Hash.new 0
	array.each do |element|
		count[element] += 1
	end
	highest_frequency = count.values.max
	count.select! {|k,v| v == highest_frequency}
	p count.keys
end
=end

# 3. Refactored Solution
def mode (array)
	include Enumerable
	group_elements = Hash.new 0
	array.each do |element|
		group_elements[element] += 1
	end
	# Highest frequency will return the maximum value within 'group_elements'
	highest_frequency = group_elements.values.max
	# The select! method only retains the key/value pairs for which the value equals highest_frequency
	p group_elements.select! {|k,v| v == group_elements.values.max}.keys
end

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
	We converted the array (input) to a hash and then converted it back to an array (output).
	The advantage is that this allows to keep the link between the array entry and the number of occurences of that element.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
	I did 5.3 prior to working on 5.2 so I'm comparing with my week-4 pairs.
	The pseudo-code we wrote is relatively straightforward, because there is not too much complexity in the actions.

What issues/successes did you run into when translating your pseudocode to code?
	Whereas the (non-technical) pseudo-code is relatively simple, we came across various translation issues:
	- We didn't always know the right methods to apply our thinking to code-language
	- We ran into some issues when trying to apply a certain method to a hash vs. and array etc.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
	We have used two iterative methods: .each and .select!
	- .each: The .each method was used to convert each array-element to a hash-key and count the number of occurences corresponding with that key.
	- .max: The highest 'number' of occurences was selected via the .max method.
	- .select!: The .select! method was used to iterate over the hash, and only retain the key/value pairs that had a value equal to the highest number of occurences.
	During the refactoring phase, we mostly paid attention to the reaibility of the code rather than looking for performance improvements.
=end


