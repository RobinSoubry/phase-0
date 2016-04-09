// JavaScript review of challenge 6.7: Validate Credit Card (medium long)

/*
USER STORIES
============
* As a user I want to input a 16-digit number and verify whether it is a valid credit card number.

PSEUDO-CODE
============
*Input: Integer with 16 digits
* Output: Boolean (true/false) based on whether the creditcard number is valid or not
* Steps:
  * Step 1: Initialize the class with a parameter and define number as an instance variable.
    * Raise argument error if the argument does not equal 16 digits
  * Step 2: Change object type from integer (via string) to an array with individual digits (convert back to digit from string).
  * Step 3: Create a method to double the value of every other integer , starting with index zero in the array
  * Step 4: Create a method to split double digit integers to single digit array elements
  * Step 5: Iterate through array and add the value of each element to a counter
  * Step 6: Create a bolean operator: IF Divisive by 10, return true, ELSE return False
*/

// INITIAL SOLUTION
// ================
// var checkCard = function(number){
//   if (isNaN(number)) {
//     console.log("The input must be a number");
//   }
//   else if (number.toString().length != 16){
//     console.log('The input number must have 16 digits');
//   }
//   else {
//     var num_array = (""+number).split("");
//     for (var i = 0; i < num_array.length; i++){
//       if (i %2 == 0){
//         num_array[i] *= 2;
//       } 
//     }
//     var string_array = num_array.join("");
//     var final_array = string_array.split("");
//     var total = 0;
//     for (var j = 0; j < final_array.length; j++){
//       total += parseInt(final_array[j]);
//     }
//     if (total % 10 == 0){
//       console.log("true");
//       return true;
//     }
//     else{
//       console.log("false");
//       return false;
//     }  
//   }
// }

// REFACTORED SOLUTION
// ===================
var checkCard = function(number){
  if (isNaN(number)) {
    throw new TypeError('The input must be a number');
  }
  else if (number.toString().length != 16){
    throw new TypeError('The input number must have 16 digits');
  }
  else {
    var card_array = (""+number).split("");
    for (var i = 0; i < card_array.length; i++){
      if (i %2 == 0){
        card_array[i] *= 2;
      } 
    }
    var final_array = card_array.join("").split("");
    var total = 0;
    for (var j = 0; j < final_array.length; j++){
      total += parseInt(final_array[j]);
    }
    if (total % 10 == 0){
      return true;
    }
    else{
      return false;
    }  
  }
}

checkCard("A");
checkCard(11111111111111112);
checkCard(1);
checkCard(4408041234567901);
checkCard(4408041234567991);

// REFLECTION
// ==========
/*
What concepts did you solidify in working on this challenge? 
  I got a more solid understanding of:
    * JavaScript syntax in general
    * Error handling in JavaScript (client-side validations are useful to reduce server-requests)
    * Type handling and conversions (conversion to integer vs. string etc.)
    * Iterations over array elements  

What was the most difficult part of this challenge?
  I find it relatively hard to 'translate' code from one Ruby to JavaScript as it limits my thinking to ruby-methods that not necessarily exist in JavaScript.
  It seems easier to understand the logic of the ruby code and build something from scratch from the JavaScript toolkit.

Did you solve the problem in a new way this time?
  Yes and no: I recycled the logic from the previous code, but adapted the structure quite a bit to JavaScript.
  I also experimented with error handling in JavaScript (as it's not very strict on arguments):
    I tried working with try{…} catch{…} and final {} but couldn't get it working well, so I used if/else logic to throw specific errors on wrong input.

Was your pseudocode different from the Ruby version? What was the same and what was different?
  The pseudo-code is the same as it is supposed to be language-independant.
*/

