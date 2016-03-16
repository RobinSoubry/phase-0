# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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

class GuessingGame
  def initialize(answer)
    @answer = answer
  end


  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  		@x = false
  	elsif @guess == @answer
  		return :correct
  		@x = true
  	else
  		return :low
  		@x = false
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end 
end


# Refactored Solution






# Reflection