# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode
=begin
# Input:
	* The program receives one integer argument for the parameter "answer" upon initialisation of the class.
	* When running the program, the user will be asked for an integer argument "guess".
# Output: The program has two main methods that return distinct values:
	* .guess method: returns three kinds of 'symbols' depending on the outcome of a logical test:
		* :high IF the value of guess is GREATER THAN the value of answer
		* :correct IF the value of guess EQUALS the value of answer
		* :low IF the value of guess is LESSER THAN the value of answer
	* .solved? method:
		* IF the value of the most recent guess EQUALS the value of answer => Return TRUE
		* IF the value of the most recent guess DOES NOT EQUAL the value of answer => Return FALSE
# Steps:
	* step 1: Creation of a class "GuessingGame" with one mandatory (integer) argument "answer"
	* step 2: Creation of method .guess with mone mandatory (integer) argument "guess"
		* Create a logical comparison operator to evaluate the value of guess compared to the value of answer.
		* Return the respective symbols (as described in output), based on the outcome of the comparison.
	* step 3: Creation of method .solved? that compares value of the latest guess with the value of answer and returns TRUE IF EQUAL and FALSE IF NOT EQUAL.
=end

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end


#   def guess(guess)
#   	@guess = guess
#   	if @guess > @answer
#   		return :high
#   		@x = false
#   	elsif @guess == @answer
#   		return :correct
#   		@x = true
#   	else
#   		return :low
#   		@x = false
#   	end
#   end

#   def solved?
#   	if @guess == @answer
#   		return true
#   	else
#   		return false
#   	end
#   end 
# end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess == @answer
  		return :correct
  	else
  		return :low
  	end
  end

  def solved?
  	@guess == @answer ? true : false
  end 
end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	The analogy can be drawn with vehicles. You can create a class "Vehicles" that has several built-in characteristics (# of wheels, the engine output, fuel capacity, passenger capacity etc.) and functions (acceleration, halting, fueling, etc.)
	Both a car and an airplane will have the same characteristics (both have wheels, an engine, passenger capacity etc…) and both vehicle types will have the same functions to operate properly.
	When creating a class (a blueprint for other -similar- vehicles), may want to pre-define these characteristics and functions. But whereas each object in that class will have the same characterisitics and functions, the values for each object in the class will differ a lot.

	** This IMAGE explains it all: https://s-media-cache-ak0.pinimg.com/236x/92/62/d7/9262d79bb84d45419ef621a440dfc42a.jpg **

When should you use instance variables? What do they do for you?
	Instance variables are very helpful when you want to use a variable across the different methods of the same class.
	Unlike local variables (that can't be used outside the method they are created in), instance variables, can carry the information a longer way.
	Unlike class variables, the instance variables are still tied to the specific object.
		For example, if you would initiate another game with another value vor "answer", both games won't interfere.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	Flow control is a set of tools:
		* Conditionals: if/elsif,else; unless; case; when
		* Loops: loop, for, while and until
		* Iterators with codeblocks
	Flow control techniques evaluate objects or object-elements against a certain condition and provide a different coutcome, based on the evaluation.

	I did not have any issues in implementing control flow for this challenge.
	The ternary operator is very cool as it reduced my refactored code a lot!
		But you have to know how to read it though.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	Symbols are unique (every time you use them, they will point to the same object) and cannot be changed once they're created.
	Strings on the other hand create a new object, every time the "" are called.
	As a result, symbols are faster and much more efficient (they are stored in Ruby's symbol index) and require less processing power to return values.
	In this challenge, we used symbols because of their efficiency. The values are unique anyways and don't need to be changed.
=end