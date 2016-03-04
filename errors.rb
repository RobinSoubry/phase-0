# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# 		errors.rb
# 2. What is the line number where the error occurs?
# 		170
# 3. What is the type of error message?
# 		syntax error
# 4. What additional information does the interpreter provide about this type of error?
# 		unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# 		# Write your reflection below as a comment.
# 6. Why did the interpreter give you this error?
# 		The method cartman_hates (starting on line 13) is incomplete and is therefore not closed.
# 		This will keep the input open throughout the whole reste of the document.
# 		There is also nothing specifying whether the input is true or false, nor does it include any break to get out of the loop.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 		Line 39 in <main>
# 2. What is the type of error message?
#       undefined local variable or method `south_park'
# 3. What additional information does the interpreter provide about this type of error?
#  		(NameError)
# 4. Where is the error in the code?
# 		Line 39
# 5. Why did the interpreter give you this error?
# 		It looks like the code tries to call a method, names 'south_park'.But this method has never been defined anywhere in the document and is thus 'unknown'.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 		Line 54 in <main>
# 2. What is the type of error message?
# 		undefined method `cartman' for main
# 3. What additional information does the interpreter provide about this type of error?
# 		Object (NoMethodError)
# 4. Where is the error in the code?
# 		Line 54
# 5. Why did the interpreter give you this error?
# 		The syntax 'cartman()' is used as if it were a method. But this has not been defined anywhere in the document and is unknown.

# --- error -------------------------------------------------------

=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end

# 1. What is the line number where the error occurs?
# 		Line 69:in `cartmans_phrase'
# 2. What is the type of error message?
# 		wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# 		(ArgumentError)
# 4. Where is the error in the code?
# 		Line 73
# 5. Why did the interpreter give you this error?
# 		The method got the argument 'I hate kyle', but Ruby did not expect any argument, so it does not know what to do with it.

# --- error -------------------------------------------------------

=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end

# 1. What is the line number where the error occurs?
# 		Line 90:in `cartman_says'
# 2. What is the type of error message?
# 		wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# 		(ArgumentError)
# 4. Where is the error in the code?
# 		Line 94
# 5. Why did the interpreter give you this error?
# 		Ruby expected an argument for the method "cartman_says" but did not find any.

# --- error -------------------------------------------------------

=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end

# 1. What is the line number where the error occurs?
# 		Line 111:in `cartmans_lie'
# 2. What is the type of error message?
# 		wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# 		(ArgumentError)
# 4. Where is the error in the code?
# 		Line 115
# 5. Why did the interpreter give you this error?
# 		Similar to the previous error, Ruby expected two arguments for method 'cartmans_lie', but obly obtained one. It can therefore not complete the code.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 		Line 132:in `*'
# 2. What is the type of error message?
# 		string can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# 		(TypeError)
# 4. Where is the error in the code?
# 		from errors.rb:132:in `<main>'
# 5. Why did the interpreter give you this error?
# 		Ruby is asked to multiply two different types (5 is an integer whereas "Respect my authoritay!" is a string).
# 		This may work the other way around, as "Respect my authoritay!" * 5, which will join "Respect my authoritay!" five times in a row.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#  		Line 148 in <main>
# 2. What is the type of error message?
# 		divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# 		(ZeroDivisionError)
# 4. Where is the error in the code?
# 		Line 148
# 5. Why did the interpreter give you this error?
# 		It is mathematically incorrect to divide by zero as this will give "infinity", and computers can't handle the concept of "infinity"

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 		Line 164 in `require relative`
# 2. What is the type of error message?
# 		cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# 		-- /Users/robinsoubry/Documents/DBC/phase-0/phase-0/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# 		The code might actually be OK, but the file is missing.
# 5. Why did the interpreter give you this error?
# 		Ruby expects to load a file called 'cartmans_essay.md', which should be located in the same folder as 'errors.rb' Ruby returns an error message because the file could not be found / loaded.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
	The first error was definitely the hardest one.
		def cartman_hates(thing)
	  		while true
	    		puts "What's there to hate about #{thing}?"
		end
	Even though the instructions metnioned that the line number may be confusing, I didn't immediately understood why I would have an error in a comment-field…

How did you figure out what the issue with the error was?
	I commented the first code-block until I no longer received the error. This allowed me to pinpoint where the error was situated

Were you able to determine why each error message happened based on the code? 
	In this challenge, it was very OK, but I can imagine it doesn't always work like that. It is very helpful to have the error message next to the code, and see where else the problem may occur.
	For example with Argument Errors, the terminal will indicate the line of the method where the error occurs in, but not where it will be called (the actual line where you may need to fix it).

When you encounter errors in your future code, what process will you follow to help you debug?
	I certainly have a better understanding of the error messages now. I will look at the line number and the type of error. These two should give enough info for a majority of errors. If it's not clear enough, I will dig deeper in the remaining data of the error message.
	The RSpec principle also seems very cool and helpful. I look forward to learning more about that.
=end