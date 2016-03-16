#Attr Methods

# I worked on this challenge by myself

# I spent [2] hours on this challenge.

# Pseudocode

# Input: The input is limited to the creation of a new object "greet" in the Greetings class, and afterwards calling the method .hello on the object greet.
# Output: The output is a string that sources a keyword (the name of the student) from another class.
# Steps:
	# Step 1: Create a class 'NameData' that initializes with an instance variable @name equal to "Robin Soubry" 
	# Step 2: Create an attr_reader for the instance variable @name, within the class NameData 
	# Step 3: Create a class 'Greetings' that initializes a new object for class 'NameData' for a new instance variable
	# Step 4: Puts a scentence to the screen, that is composed of a string with the name of the student that was initialized in the NameData class.

class NameData
	attr_reader :name

	def initialize
		@name = "Robin Soubry"
	end
end

class Greetings
	def initialize
		@student = NameData.new
	end

	def hello
		puts "Hello #{@student.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello


# Reflection
=begin
# RELEASE 1 #
=============
What are these methods doing? How are they modifying or returning the value of instance variables?
	* .initialize: Initializes the method with a set of default values to the instance variables @age, @name and @occupation.
	* .print_info: Puts all the info that is known (at the moment of calling the method) for the instance variables to the screen.
	* .what_is_age: Returns the value of "@age" to the console, but it does not print anything to the screen
	* .change_my_age= : Resets the value of "@age" to the value of the argument "new_age"
		This method uses an alternate format of resetting the value, based on an argument: .change_my_age = 28 instead of .change_my_age(28).
	* .what_is_name: Returns the value of "@name" to the console, but it does not print anything to the screen
	* .change_my_name= : Resets the value of "@name" to the value of the argument "new_name"
		This method uses an alternate format of resetting the value, based on an argument: change_my_name = "Taylor" instead of .change_my_name("Taylor")
	* .what_is_occupation: Returns the value of "@occupation" to the console, but it does not print anything to the screen
	* .change_my_occupation= : Resets the value of "@occupation" to the value of the argument "new_occupation"
		method uses an alternate format of resetting the value, based on an argument: .change_my_occupation = "Rare Coins Trader" instead of .change_my_occupation("Rare Coins Trader")

# RELEASE 2 #
=============
What changed between the last release and this release?
	The method .what_is_age has been replaced by attr_reader :age and the .age method to return the value of @age.

What was replaced?
	The traditional way of defining a method to return @age
		def what_is_age
			@age
  		end
  	… was replaced by an attribute reader (attr_reader) :age

Is this code simpler than the last?
	Yes, the code is much simpler than the prefious one. It looks like a handy way of reading out values (on the condition that the names are carefully chosen!)


# RELEASE 3 #
=============
What changed between the last release and this release?
	The method .change_my_age has been replaced by attr_writer :age and the .age = method to modify the value of @age.	

What was replaced?
The traditional way of defining a method to change the value of @age
		def change_my_age=(new_age)
  			@age = new_age
 		end
	… was replaced by an attribute writer (attr_writer) :age

Is this code simpler than the last?
	Yes, the code is even simpler than the one in release one. By using the symbol :age, pointing to the same value of @age, and by allowing it to both read and write this value, the code gets very simple and straightforward.



# RELEASE 6 #
=============
What is a reader method?
	A reader method returns a value or state outside of the class it was created in, but it does not change the value.
	The reader method can be called by attr_reader :symbol_name.
		The :symbol_name must correspond with an instance variable that was created in the class.
	The reader method allows to "read" in values without creating a dedicated method for returning that value to the console.
	You can call the reader method by adding it as a method to the object.
		example: object_name.symbol_name

What is a writer method?
	A writer method allows to change a value or state outside of the class it was created in, but it does not read the value.
	The reader method can be called by attr_reader :symbol_name.
	The :symbol_name must correspond with an instance variable that was created in the class.
	Similar to the reader method, you don't have to create a specific class to overwrite te value.
		You can simply call it by "object_name.symbol_name = new_value"

What do the attr methods do for you?
	The attr methods read and/or write the values for specific instance variables by calling on a symbol.
	This is more efficient creating a specific method to return the value or to overwrite the value.

Should you always use an accessor to cover your bases? Why or why not?
	The attr_accessor both reads and writes the values of an instance variable. This is very powerful, but potentially dangerous:
		1. You don't want to expose the application to potential securuty threats more than necessary.
		2. Debugging with both read/write may be tricky
		3. You want to be careful to not give other methods or classes too much access to the inner workings of others.

What is confusing to you about these methods?
	The examples given were very clear and straightforward.
	When I tried to solve release 5, with the challenge on greeting across two differnet classes, I had it harder to understand:
		* Which name of the instance variable to use as a attr_reader.
			For example, I tried to puts #{:name}, thinking it would work
		* When to create a new object and how to combine it with the attr_reader ":name"

=end