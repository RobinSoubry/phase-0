# GREETING
puts 'What is your firstname?'
first_name = gets.chomp

puts 'What is your middle name?'
middle_name = gets.chomp

puts 'What is your lastname?'
last_name = gets.chomp

puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '!'



# NUMBERS
puts 'What is your favorite number?'
fav_num = gets.chomp.to_i
fav_num2 = fav_num + 1
puts 'How about ' + fav_num2.to_s + ' ? This is a bigger better number than ' + fav_num.to_s


# LINKS
# 	Define Method: https://github.com/RobinSoubry/phase-0/blob/master/week-4/define-method/my_solution.rb
# 	Math: https://github.com/RobinSoubry/phase-0/blob/master/week-4/math/my_solution.rb


# REFLECTION

#How do you define a local variable?
# 	You can define a local variable by stating it's name, add an 'equal-sign' and give it a value.

#How do you define a method?
# 	You can declare a method by opening with 'def' + 'method_name' (and parameters you want to add to the method -if any-). 

#What is the difference between a local variable and a method?
=begin 
	A method actually 'does' something whereas a variable is only a name to hold on to a specific value or piece of code (strings, integers, etc.)
	A method will for example manipulate variables, change their content or print them to the screen etc.
=end

#How do you run a ruby program from the command line?
# 	You can rub a ruby program from the command line by typing "ruby + filename.rb" and hit enter

#How do you run an RSpec file from the command line?
# 	You can run an RSpec file in the command line by typing "rspec + filename.rb" and hit enter

#What was confusing about this material? What made sense?
=begin
	* 	The difference between return, puts and print gave me a hard time.
		Especially in the address-challenge where I got the string correctly from the first time, but the RSpec file kept on giving result 'nil'… It took me some time to actually figure out what went wrong.
	*	Knowing which data-format you're working with will be essential in this kind of work
	*	I read nearly through all the string methods, and some seem to be quite advanced and not easy to use.
=end
