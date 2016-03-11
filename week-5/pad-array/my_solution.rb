# Pad an Array

# I worked on this challenge with: Aarthi Gurusami.

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 3 arguments: an array, a minimum size (this will be an integer), and an optional padding (any object)
# What is the output? (i.e. What should the code return?) the original array where:
 # -the length is equal to the min_size integer
 # -if the number of elements in the array is shorter than the min_size, it should be completed with the padding object
 # -the output array should first be populated with each consecutive element in the input array
# What are the steps needed to solve the problem?
#1. Identify the length of the input array
#2. Compare that length to the value of min_size
#3. Add new array elements with the padding value until the length of the input array is equal to or bigger than min_size
#4. Return the value of the array


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   while array.length < min_size
#   array << value
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new
#   array.each do |x|
#   	new_array.push(x)
#   end
#   while new_array.length < min_size
#   	new_array.push(value)
#   end
#   p array
#   p new_array
# end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
  array << value
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.map{|x| x}
  while new_array.length < min_size
   	new_array.push(value)
  end
  return new_array
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
	Yes, the problem was relatively straightforward and the examples helped to better understand what kind of solution was expected.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
	Not really, we easily translated the challenge to pseudo-code, but both had a lack of a profound understanding of Ruby (and our limited toolbox) to properly translate it to code straight away. It took some trial and error to make it work.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
	We tried until we gout both the destructive and non-destructive solutions work well. The destructive solution was easier to come up with than the non-destructive one.

When you refactored, did you find any existing methods in Ruby to clean up your code?
	In the non-destructive solution we implemented the .map method to reduce the code used… The .map method has the significant advantage in that it leaves the original code as is.

How readable is your solution? Did you and your pair choose descriptive variable names?
	Our naming is relatively straightforward, but we did not look for too descriptive names as the the code functionality was limited.

What is the difference between destructive and non-destructive methods in your own words?
	Destructive methods change the input objects in a permanent way, so you won't be able to reuse the same input again later on in the application code.
		example: a1.merge(a2)
			--> All the elements of a2 will be added to the first array a1. If you return a1 after calling the merge method, it will be permanently changed.
	Non-destructive methods don't change the code, but store the information in a new object.
		example: a3 = a1.merge(a2)
			--> By creating a new array (a3), the original objects a1 and a2 will be preserved.
=end



