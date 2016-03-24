/*
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
*/










