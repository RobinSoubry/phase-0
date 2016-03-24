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