# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array or strings (labels) are required arguments to create the class. The array does not specify a specific number of elements.
# Output: The class Die will have two methods:
#   * .sides: The .sides method returns the number of sides on the die
#   * .roll: The .roll method returns a random value within the array.
# Steps:
#   1. Create a class
#   2. Define the initialize method, with a parameter 'labels' for the array of strings.
#   3. Set an ArgumentError:
#       * If the input arguments for the parameter 'labels' is not an array
#       * If the number of arguments given does not equal 1
#   4. Define the method .sides, which returns the number of sides on the die (elements in the array)
#   5. Define a method .roll, which select a random element from the array and returns it to the console.

# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError, 'Argument is not an array' unless labels.kind_of?(Array) == true 
#     raise ArgumentError, 'The array cannot be empty' unless labels.length > 0
#     @sides = labels
#   end

#   def sides
#       return @sides.length
#   end

#   def roll
#     p @sides[rand(@sides.length)]
#   end
# end

# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError, 'Argument is not an array, please give an array as an argument' unless labels.kind_of?(Array) == true 
    raise ArgumentError, 'The array cannot be empty, please provide at least one array element' unless labels.length > 0
    @faces = labels
  end

  def sides
      return @faces.length
  end

  def roll
    p @faces[rand(@faces.length)]
  end
end

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The biggest difference is that in the first die class (week 5), the method 'roll' only needed to spit out a number that was part of the range on the die.
  In this solution, rolling the die actually needs to be linked with the strings that were obtained in the input argument (array).
  The major difference was in the .roll method, where I used rand to generate an index value, based on the number of elements in the array.

What does this exercise teach you about making code that is easily changeable or modifiable? 
  With clean code from the previous challenge (week 5), it was very easy to make some tweaks to the code and use it for a new class.

What new methods did you learn when working on this challenge, if any?
  I used .kind_of?() to verify whether the argument given was an array.

What concepts about classes were you able to solidify in this challenge?
  * Interchangeability of instance variables.
  * Creation of ArgumentErrors

=end