#Release 1#

##What does puts do?##
`puts` (acronym for `put string`) returns _nil_ , prints the output of the evaluated code to the console/screen and starts a new line.


##What is an integer? What is a float?##
An **interger** is any number without decimal points.
Examples of integers:
	* 2
	* -9
	* 365
Integers can be used to pinpoint various elements like pages, pennies, the number of users etc.

**Floats** are numbers with decimal points.
Examples of floats:
	* 3.14159265359
	* 1.414
	* - 0.001
Floats are often used in scietific environments where precise data is required. ie. Mathematical surface or volume calculations in 3D software, Color mapping in medical x-rays, etc.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?##
Ruby respects the input format when generating output in its calculations:
For example, the division of float numbers: `puts 7.0 / 2.0` will print _3.5_ to the screen. If however you let Ruby compute the division of integer numbers: `7 / 2`, the console will print _3_ to the screen.
Ruby automatically rounds down the output number to an integer by cutting of the tail. You could compare this to paying for something. If a bus ride costs 2 dollar, you will get three bus rides. Not three and a half.


#Release 2#
Number of hours in a year
puts 365 * 24

Number of minutes in a decade
puts 10 * 365 * 24 * 60

Age in seconds
puts 29 * 365 * 24 * 60 * 60

