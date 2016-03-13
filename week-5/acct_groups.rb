# CHALLENGE
=begin
Assign an accountability group to the students in your cohort.
	An accountability group should ideally contain 4 or 5 people.
	Make sure that each group contains at least 3 persons. (It's no fun to be alone or by two)
=end


# PSEUDO CODE
=begin
	Input: An array of strings containing the names of all the students in the cohort (assumtion that each name is unique)
	Steps:
			- Determine the number of accountability groups required, based on the number of students in the cohort.
				Logic: 	If the number of students is divisable by 5, create the one accountability group for every 5 students.
						If the number of students is not divisable by 5, add one extra accountability group to overflow (groups larger than 5 are not allowed)
			- Loop over the list of students and assign each person a number from a range that goes from 1 up to the highest group number.
	Output: The output will be an a hash with the accountability group as a key and an array containing the student names as the corresponding value.	
=end


# INITIAL SOLUTION
# def create_acc_groups(student_list)
# 	# Determine the number of accountability groups
# 	if student_list.length % 5 == 0
# 		num_groups = student_list.length / 5
# 	else
# 		num_groups = (student_list.length / 5) + 1
# 	end
# 	p student_list.length
# 	p num_groups

# 	# Create an array with each accountability group as an array element.
# 	acc_groups = Array.new(num_groups) { |i| i+1 }
# 	p acc_groups

# 	# Create hash, matching an accountability group to each student
# 	hash = Hash.new
# 	student_list.each_with_index do |student, index|
# 		hash[student] = index%num_groups+1
# 	end
# 	p hash
# end
# # Data-set for test
# create_acc_groups(["Aarthi Gurusami" , "Abid Ramay" , "Adam Zmudzinski" , "Alec Hendrickson" , "Alex Wen" , "Alicia Briceland" , "Allison paul" , "Andrey Slonski" , "Anna Lansfjord" , "Ben Sanecki" , "Benjamin R Flores" , "Buck Melton" , "Caitlin Hoffman" , "Carlos Gonzalez" , "Chand Nirankari" , "Ché Sanders"])


# REFACTORED SOLUTION
=begin
Changes made
	* Added a special accountability group if less than three students
	* Removed redundancy in number of accountability groups from first solution (creating an array)
	* Removed checkpoints of returning values with 'p'
=end

def create_acc_groups(student_list)
	# Determine the number of accountability groups
	if student_list.length < 3
		hash = Hash.new
		student_list.each {|student| hash[student] = "Lonesome Cowboys"}
		p hash
	else
		if student_list.length % 5 == 0
			num_groups = student_list.length / 5
		else
			num_groups = (student_list.length / 5) + 1
		end

		# Create hash, matching an accountability group to each student
		hash = Hash.new
		student_list.each_with_index do |student, index|
			hash[student] = index%num_groups+1	#The quotient of the number of groups is used to create a continuous cycle of assigning group numbers to students. The advantage is that this will increase with higher number of students too.
		end
		p hash
	end
end

create_acc_groups(["Aarthi Gurusami" , "Abid Ramay" , "Adam Zmudzinski" , "Alec Hendrickson" , "Alex Wen" , "Alicia Briceland" , "Allison paul" , "Andrey Slonski" , "Anna Lansfjord" , "Ben Sanecki" , "Benjamin R Flores" , "Buck Melton" , "Caitlin Hoffman" , "Carlos Gonzalez" , "Chand Nirankari" , "Ché Sanders"])


# REFLECTION
=begin
What was the most interesting and most difficult part of this challenge?
	The most interesting part was making explicit requirements for the number of students per accountability group.
		I absolutely wanted to create leveled groups instead of filling up the groups to 5 and then being left with a group consisting of the tail.
		To do this, I needed to know the number of accountability groups in advance, so I could use that (max) number as a trigger to go back to group 1 when assigning groups to students.
	The most difficult part was without doubt the iteration over the student_list to create a key/value pair for each student.
		I miss (and still do) the understanding, vocabilary and grammar to iterate over two arrays (of unequal length) to create a hash with key/value pairs from them.
		From the Well Grounded Rubyist, I tried out numerous methods, but the problem was that they would fully iterate within the iteration itself:
			* .cycle over a range (1..num_groups) or an array deviated from that range.
			* An enumerable with .next trigger that I hoped would be activated per loop.
			* A .zip method to combine the two arrays
			* A 'rand(num_groups)' to fill the groups based on statistical levelling (but this could't guarantee the restictions of staying in groups of 4-5 people)

Do you feel you are improving in your ability to write pseudocode and break the problem down?
	Yes. Is this "more complex" challenge, the pseudo-code allowed me to break down the challenge (and thinking) in smaller, manageable pieces.
	I feel that my pseudo-code is very human (and should be more technical?) as I rarely use keywords like WHILE, ELSE, IF, etc

Was your approach for automating this task a good solution? What could have made it even better?
	What's good:
	* I think the solution works well in the sense that the algorithm first decides how many accountability groups to create.
	* Building on that number, it will always try to level out the number of students in the accountability group to 4 or 5.
		If for example, you have 13 students in the cohort, the algorithm will create groups of 5 + 4 + 4 rather than 5 + 5 +3.
	What could be better:
	* I have spent a tremendous amount of time in trying to use the .cycle method on a range (or a deviated array from the range).
		This code might be slightly longer, but would have been more explicit to read for other programmers looking at the code.

What data structure did you decide to store the accountability groups in and why?
	I stored the relation between the student and the accountability group in a hash.
	This collection type allows me to maintain a clear relationship between the student's name and the number of the accountability group.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	It took me nearly 4 hours to get the solution working.
	In the refactoring release, I mostly tried to:
		* Make it more readable
		* Remove redundancy in legacy code (from prior attempts)
		* Add functionality (ie. students in cohorts with less than three students will automatically be assigned to a special accountability group "Lonesome Cowboys")
=end