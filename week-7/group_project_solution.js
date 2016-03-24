/*
USER STORIES
============
* 	As a user, I want to be able to provide a list of any amount of whole numbers and be able to call 3 calculations on them.
	I want accuracy on each of these functions, including decimal places.

* 	The first (function called "sum") should be able to add up and total the numbers in my list.

* 	The second (function called "mean") should be able to average the numbers in my list.

* 	The last (function called "median") should be able to tell me what the middle value is for the numbers in my list.
	If there are two items in the middle it should tell me the number between those two.
	(Ex: 5 and 7, middle is 6.)

PSEUDO CODE
===========
	General
	-------
	Input: An array with integers or float numbers
	Output: A number that is the result of a calculation-function on the input array.
	Steps:
		Step1: Define a variable 'list' that equals an empty array.
		Step2: Define three functions: SUM - MEAN - MEDIAN (see details below)

	Function SUM
	------------
	Input: The variable 'list'
	Output: The SUM of all elements in the array
	Steps: 
		Step1: 	DEFINE a new FUNCTION called 'sum' with a parameter 'list'
		Step2: 	Create a variable 'sum_of_list' and set it EQUAL to zero.
		Step3: 	Use a FOR loop to iterate over all elements in the array.
				ADD each element in the array to 'sum_of_list'.
		Step4: 	RETURN 'sum_of_list'.

	Function MEAN
	-------------
	Input: The variable 'list'
	Output: The average value (mean) of all elements in the array
	Steps: 
		Step1: 	DEFINE a new FUNCTION called 'mean' with a parameter 'list'
		Step2: 	Create a variable 'sum_of_list' and set it equal to zero.
		Step3: 	Use a FOR loop to iterate over all elements in the array.
				ADD each element in the array to 'sum_of_list'.
		Step4: 	SET the variable 'mean_of_list' EQUAL to ('sum_of_list'/the length of the array)
		Step5: 	RETURN 'mean_of_list'

	Function MEDIAN
	---------------
	Input: The variable 'list'
	Output:
		* IF the amount of numbers in the list is UNEVEN: The value of the middle number of the ordered list (small to large) value (mean) of all elements in the array.
		* IF the amount of numbers in the list is EVEN: The average (mean) of the two middle numbers (of the ordered list (small to large)).
	Steps: 
		Step1: 	DEFINE a new FUNCTION called 'median' with a parameter 'list'.
		Step2: 	ORDER the elements in the list from small to large.
		Step3: 	Determine whether the amount of numbers in the array is EVEN or UNEVEN.
		Step4: 	IF UNEVEN: RETURN the value, positioned at index the middle index of the sorted array.
				IF EVEN: RETURN values of the middle two numbers in the (ordered) list and take the average on these (as described in the function 'mean')











