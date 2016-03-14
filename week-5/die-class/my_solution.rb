# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [2] hours on this challenge (90 minutes reading, 15 minutes challenge and 15 minutes reflection).

# 0. Pseudocode

# Input: input will be the creation command of a new object "die" with one (positive, greater then or equal to one integer) argument.
# Output: 
# Steps:


# 1. Initial Solution

# class Die
#   def initialize(sides)
#  	raise ArgumentError, 'Argument is smaller than a positive integer greater than or equal to one' unless sides > 1
#     @number_of_sides = sides
#   end

#   def sides
#   	return @number_of_sides
#   end

#   def roll
#     return (1 + rand(@number_of_sides))
#   end
# end

# 3. Refactored Solution

class Die
  def initialize(sides)
 	raise ArgumentError, 'Argument is smaller than a positive integer greater than or equal to one' unless sides > 1
    @number_of_sides = sides
  end

  def sides
  	return @number_of_sides
  end

  def roll
    return (1 + rand(@number_of_sides))
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
	An ArgumentError is an error that occurs when you call a method (or create a class) with a wrong argument, or with a wrong number of arguments.
	ArgumentErrors are preventive tools that are very useful to avoid polluting the application with data that will pose problems later on in the code.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	Three Ruby methods were defined:
	* initialize: The initialize method initializes class variables that were passed by the method "new".
	* sides: Returns the number of sides, a number that was passed as arguments when using the method "new".
		This is a simple "return" because the variable got prefilled by the initialize method.
	* roll: Returns a random number between one and the number of sides of the die.
		The method "rand" was used to generate a random number (from zero to the number of sides -1), so I added 1 to convert the range.
	I did not really encounter any challenges in solving this case.

What is a Ruby class?
	A Ruby class is a blueprint for objects within that class.
	You can pre-define characteristics and/or functions to objects/instances that are created under that class.
	For example, a class Vehicle will have some basic aspects to it, that are valid for all objects in that class.
		* 	Cars will have the same characteristics (wheels, a maximum speed, a capacity, engine output etc) and functions (accelerate, halt, cruise, etc) as planes.
			The 'blueprint' will be the same, but the values of a car will differ from planes.

Why would you use a Ruby class?
	Ruby classes act as a blueprint for similar objects that will have the same characteristics and/or functions.
	Therefore they can save a lot of time when creating or manipulating objects. Next to saving time, they will reduce repetition in the code and increase readability.

What is the difference between a local variable and an instance variable?
	* A local variable is created within a method and disappears once the method is ended. A local variable cannot be used outside of that method.
	* An instance variable is available across methods for any instance or object. They do however change from one object to the other.
			For example, you can define an instance variable for the cruising speed of a plane and use it in other methods that may calculate the fuel consumption etc.
				It will be usable for all the methods to that object. But a car (another object) will have its own data assigned to the cruising speed.

Where can an instance variable be used?
	An instance variable can be used across methods for the instance or object. Instance variables can NOT be passed from one object to the other.
=end