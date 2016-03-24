// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Elizabeth Brown.

// Pseudocode
// Input: A number with an indefinte number of digits
// Output: String with commas separating every three digits starting from the right
// Steps:
// Create a function named: separateComma() that takes a number as an argument
// Split the number into an array with each digit being an element
// Reverse the array
// Use a loop to insert a comma after every 3 elements
// Loop closes when out of elements
// Reverse array
// Convert array to string (Perhaps use the JOIN function)
//arr.insert(index, item)



// Initial Solution
// var separateComma = function(number) {
//   var string = number.toString()
//   var splitString = string.split("")
    
//   var newArray = []

//   while(splitString.length > 3){
//     newArray.push(splitString.pop());
//     newArray.push(splitString.pop());
//     newArray.push(splitString.pop());
//     newArray.push(",");
//   }
//   var lastArray = newArray.concat(splitString.reverse());
//   var outputString = lastArray.reverse().join("");
  
//   console.log(outputString);
// }

// separateComma(12345678)

// Refactored Solution
var separateComma = function(number) {
  var numArray = number.toString().split("").reverse();
  for (var i = 3 ; i < numArray.length ; i+=4){
    numArray.splice(i,0,",");
  }
  var outputString = numArray.reverse().join("");
  console.log(outputString);  
}

separateComma(12345678)

// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	The general approach was very similar as the challenge in week 5.
	Because we had both less experience in javascript, and lacked both vocabulary and grammar, it took us a bit more time to come up with a good solution.

What did you learn about iterating over arrays in JavaScript?
	JavaScript has much less built-in methods for iterating over arrays as Ruby does.
	So the code used is much more explicit and 'basic': We used a more counters and temporary variables than we would in Ruby.

What was different about solving this problem in JavaScript?
	JavaScript is much more computer-oriented (and less made for human reading of the code).
		so we have created more temporary variables and we were more explicit in the design of iterations.
	JavaScript has a more complicated syntax than Ruby, so we needed to pay more attention to declaring variables or closing statements with ; etc.
	We were both not very familiar with JavaScript, so we took some time to look up and experiment with methods and functions.
		Because at first we tried to write Ruby in JavaScript-style… but this obviously didn't work :-)

What built-in methods did you find to incorporate in your refactored solution?
	We used the .splice() method
	This array method takes two or three arguments and:
	* if two arguments: * Starting at the first argument
						* It takes the number (of array-elements) of the second argument and removes it from the array
						* (and returns these to the console)
		EXAMPLE: 	var fruits = ["Banana", "Orange", "Apple", "Mango"];
					fruits.splice(2, 1);
					=> ["Apple"]
					console.log(fruits) => ["Banana", "Orange", "Mango"]
	* if three arguments: 	* Starting at the first argument
							* It takes the number (of array-elements) of the second argument and removes it from the array
							* (and returns these to the console)
							* It injects the third argument(s) as array elements right after the first argument-position.
		EXAMPLE: 	var fruits = ["Banana", "Orange", "Apple", "Mango"];
					fruits.splice(2, 1, "Lemon", "Kiwi");
					=> ["Apple"]
					console.log(fruits) => ["Banana", "Orange", "Lemon", "Kiwi" , "Mango"];
*/