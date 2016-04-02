
# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
=begin
Input: An integer number
Output: Return 'true' IF the integer number is part of the Fibonacci sequence ELSE return false.
Steps: In this challenge I use the mathematical approach, provided by WikiPedia: 
		"The question may arise whether a positive integer x is a Fibonacci number.
		 This is true if and only if one or both of 5x^2+4 or 5x^2-4 is a perfect square"
		 A 'perfect square' is an integer from which the square root also is an integer.
	Step 0: Define a method 'is_fibonacci?' that takes one argument for the paramter 'num'.
	Step 1: Create a variable 'positive' to hold the value 5*num+4
	Step 2: Create a variable 'negative' to hold the value 5*num-4
	Step 3: Create a variable 'positiveroot' to hold the value of the square root for the variable 'positive'
	Step 4: Create a variable 'negativeroot' to hold the value of the square root for the variable 'negative'
	Step 5: Define an IF/ELSE statement that checks two conditions:
		IF the variable positiveroot is an integer (no decimal values) OR IF the variable negativeroot is an integer (no decimal values) RETURN TRUE
		ELSE RETURN FALSE.
=end


# Initial Solution
# require "bigdecimal"
# require "bigdecimal/math"
# include BigMath

# def is_fibonacci?(num)
# 	positive = (5*num**2+4)
# 	negative = (5*num**2-4)

# 	positiveroot = BigDecimal.new(positive).sqrt(30)
# 	negativeroot = BigDecimal.new(negative).sqrt(30)

# 	if (positiveroot%1 == 0) || (negativeroot%1 == 0)
# 		return true
# 	else
# 		return false
# 	end
# end



# Refactored Solution

require "bigdecimal"
require "bigdecimal/math"
include BigMath

def is_fibonacci?(num)
	pos = BigDecimal.new((5*(num**2)+4)).sqrt(30)
	neg = BigDecimal.new((5*(num**2)-4)).sqrt(30)

  	if (pos == pos.round) || (neg == neg.round)
    	p true
  	else 
    	p false
  	end
end

# Reflection
=begin
What concepts did you review or learn in this challenge?
	Oh boy! What a pain. I got the challenge working in 15 minutes except for the last spec test with 'large' numbers.
	The problem it seemed is that Ruby doesn't handle big decimals well and cuts of the tail after x digits…
	For very large numbers this poses an issue when you want to compare slight differences in the outcome (in this case, whether or not it is an integer number)

What is still confusing to you about Ruby?
	Ruby itself is relatively clear I was only very confused why my the function was returning the wrong outcome

What are you going to study to get more prepared for Phase 1?
	I kind of reviewed the BigDecimal in quite a lot of detail.
	To better prepare for Phase 1, I hope to find the time to do as manu other Ruby challenges as possible and get better versed in looking up stuff and drilling myself on sytax.
	
=end