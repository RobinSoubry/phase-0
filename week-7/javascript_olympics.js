 // JavaScript Olympics

// I paired with: Bill Deng on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up
var athlete1 = {
  name: "Michael Jordan",
  event: "Basketball NBA"
};

var athlete2 = {
  name: "Kobe Brian",
  event: "Basketball NBA2"
};

var athleteArray = [athlete1 , athlete2];

// "Sarah Hughes won the Ladies' Singles!"

var athleteFunction = function(array) {
  for (var i = 0 ; i < array.length ; i++){
    array[i].win = (array[i].name + " won the " + array[i].event + "!");
  }
};

athleteFunction(athleteArray);

console.log(athleteArray);

// Jumble your words

reverseString("abcdefg");
function reverseString(str) {
  return str.split('').reverse().join('');
};

// 2,4,6,8
evenNumber([1, 2, 3, 4, 5, 6]);

function evenNumber(arr) {
   return arr.filter(function(num) { //|num|
    return num % 2 === 0;
  });
};

// "We built this city"
function Athlete (name,age,sport,quote){
    this.name = name,
    this.age = age,
    this.sport = sport,
    this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
	I was lucky to pair with someone who had previous knowledge of JavaScript, so I solidified many aspects:
	* Difference between return and console.log()
	* The use of 'callback' functions: Functions that are used as arguments from other functions (see example in the even exercise on array elements)
	* The .filter method that filters elements in an array based on a condition

What are constructor functions?
	Constructor functions are templates (like Ruby classes) for objects.
	JavaScript objects don't have a default syntax for setting up new instances, their properties or it's behavior.
	To work more efficient, you can create a constructor function that creates and 'initializes' new objects with parameters and behaviors.
		This is like a 'template' you create once and call it for new objects that use the same structure with a simple list of argments.

How are constructors different from Ruby classes (in your research)?
	JavaScript constructors and Ruby classes are very similar in the sense that they both act as 'blueprints' to create new objects, define paramters and behaviors of that object.
	The difference is grammatical:
	- In JavaScript, you will use this.variableName instead of the @ symbol that identifies instance variables.
	- In Ruby, you give assign the new object with the paramters and behaviors through the 'initialize' method.
		In JavaScript, there is no such thing as the 'initialize method'… That is basically what the constructor-method does for you.
*/