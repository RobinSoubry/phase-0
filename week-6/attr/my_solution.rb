#Attr Methods

# I worked on this challenge by myself

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name

	def initialize
		@name = "Robin Soubry"
	end
end


class Greetings
	attr_reader :name
	
	def initialize
		NameData.new
	end

	def hello
		puts "Hello #{@name}! How wonderful to see you today."
	end
end

test = NameData.new
puts test.name

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


What is a writer method?


What do the attr methods do for you?


Should you always use an accessor to cover your bases? Why or why not?


What is confusing to you about these methods?
	
=end