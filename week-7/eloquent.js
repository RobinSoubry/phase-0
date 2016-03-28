
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myName = 'Robin';
console.log(myName);

// Write a short program that asks for a user to input their favorite food.
//After they hit return, have the program respond with "Hey! That's my favorite too!"
var favoriteFood = prompt("What's your favorite food?");
confirm("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Triangle
var char = '#';
var charCollection = '#';
for(i=1; i < 7; i++){
	console.log(charCollection);
	charCollection += char;
}

// FizzBuzz
for (i = 1; i < 100; i++){
	if(i%3 === 0 && i%5 === 0){
		console.log('FizzBuzz');
	}
	else if (i%3 === 0){
		console.log('Fizz');
	}
	else if (i%5 === 0){
		console.log('Buzz');
	}
	else{
		console.log(i);
	}
}

// Functions

// Complete the `minimum` exercise.

var min = function(num1,num2){
	return Math.min(num1, num2);
}

min(3,5);

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: 'Robin Soubry',
	age: 29,
	threeFavFoods: ['Mongolian Hotpot' , 'Lobster Tail' , 'Gaufre Liegois'],
	quirk: 'Cannot drink anything with ice in it.'
};