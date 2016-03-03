# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Shaun Sweet].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: The input is an array with an unknown amount of numbers
# Output: The sum of all the numbers in the array
# Steps to solve the problem.
=begin
	1. Create the METHOD 'total'
	2. Iterate through the array, ADDING EACH number to the SUM
	3. Return the SUM	
=end

# 1. total initial solution
def total(input)
	i = 0
	sum = 0
	while i < input.length
		sum += input[i]
		i += 1
	end
	return sum
end

# 3. total refactored solution
def total(input)
	sum = 0
	input.each{|x| sum += x}
	return sum
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: The input is an array with string values
# Output: One string that adds up all values in the array. The new string is capitalized
# Steps to solve the problem.
=begin
	1. Create the METHOD 'sentence_maker'
	2. Iterate through the array, ADDING EACH string to a NEW STRING
	3. Return the NEW STRING with the first letter CAPITALIZED
=end

# 5. sentence_maker initial solution
def sentence_maker(sentence)
	newsentence = ''
	sentence.each{|word| newsentence += word.to_s + ' '}
	return newsentence.capitalize.strip! + '.'
end

# 6. sentence_maker refactored solution
def sentence_maker(sentence)
	sentence.join(' ').capitalize + '.'
end
