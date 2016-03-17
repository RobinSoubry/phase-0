# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Christyn Budzyna.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Integer with 16 digits
# Output: Boolean (true/false) based on whether the creditcard number is valid or not
# Steps:
	# Step 1: Initialize the class with a parameter and define number as an instance variable.
		# Raise argument error if the argument does not equal 16 digits
	# Step 2: Change object type from integer (via string) to an array with individual digits (convert back to digit from string).
	# Step 3: Create a method to double the value of every other integer , starting with index zero in the array
	# Step 4: Create a method to split double digit integers to single digit array elements
	# Step 5: Iterate through array and add the value of each element to a counter
	# Step 6: Create a bolean operator: IF Divisive by 10, return true, ELSE return False

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

# def initialize(number)
# raise ArgumentError, 'Number should be 16 digits long' unless number.to_s.length == 16
# @number = number

# end

# def check_card

# @card_array = @number.to_s.split(//)

# @doubled_card_array = @card_array.each_with_index do |num,index|
#   if index % 2 == 0
#   @card_array[index] = num.to_i * 2
#   else
#   @card_array[index] = num.to_i
#   end
# end



# @doubled_string_array = @doubled_card_array.join


# @new_card_array = @doubled_string_array.split(//)


# counter = 0
# @new_card_array.each do |element|
#   counter += element.to_i
#   end


# if counter % 10 == 0
#   return true
#  else
#   return false
# end
# end

# end

# test = CreditCard.new(4408041234567901)
# test.check_card

# Refactored Solution


class CreditCard

  def initialize(number)
    raise ArgumentError, 'Number should be 16 digits long' unless number.to_s.length == 16
    @number = number
  end

  def check_card

    card_array = @number.to_s.split(//)

    doubled_nums = card_array.each_with_index do |num,index|
        if index % 2 == 0
          card_array[index] = num.to_i * 2
        else
          card_array[index] = num.to_i
        end
    end

    string_of_doubled_nums = doubled_nums.join

    split_doubled_nums = string_of_doubled_nums.split(//)

    counter = 0
        split_doubled_nums.each do |element|
          counter += element.to_i
        end

    if counter % 10 == 0
      true
     else
      false
    end
  end

end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
	I think we did well to break down the challenge with pseudo-code first as it helped us to make a checklist of what we wanted to obtain.
	Next to that we took a step by tep approach to create the logic for the method .check_card, this worked very well, and we managed to come up with a solution with relative ease.
	The most dificult:
		We wanted to create separate (sub)-methods for each step in the logic
			(so if for example, some day we would need to deal with a 20-digit credit card, we could reuse a majority of code)
		It turned however that we didn't get figure out how to nest methods, or how to chain the different sub-methods to the .check_card method.
		I might experiment a bit further with this later in the week to see how we can refactor the code to something cleaner still.

What new methods did you find to help you when you refactored?
	I haven't used the .each_with_index before, and this seems to be a very cool method.
	It was great that we could iterate over the array elements with a specific code block for even or uneven numbers.
	We could have further refactored the solution and split it out into smaller specific methods, but unfortunately, time-constraints didn't let us.

What concepts or learnings were you able to solidify in this challenge?
	I got a more solid understandig of how to iterate over an array, and execute a different manipulation, based on the index value.
	Next to that, I didn't exactly know how to split a number into an array with individual digits.
	Most of all I would say that with each challenge, I get more confident that I (we) will find a solution.
	It may not (yet) always be the cleanest or more efficient, but that will surely improve with practice.
=end
