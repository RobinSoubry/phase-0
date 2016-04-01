// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Chand Nirankari
// This challenge took us 3 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { 
    president: "Bob", 
    vicePresident: "Devin", 
    secretary: "Gail", 
    treasurer: "Kerry" 
  },
  
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 , Mary: 1},
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// INPUT: Object called "Votes" which contains parameters for each voter and a sub-object that has properties for each officer.
// OUTPUT: An object called "officers" which contains the property for each office with the name of the winner. The winner is defined by the name with the most votes. 

//STEPS:
//  1) Create a for loop that goes through each element in the Votes object and pushes the names of officer into a new object (votecount) with a number associated to it which is the number of times they have been voted for in the Votes object.
//  2) Extract the officers with the maximum number of votes and push it into the Officers object, in the appropriate role (ie President). 


// __________________________________________
// Initial Solution

// function election(votes) {
//   for(var voter in votes) {  
//     var ballot  = votes[voter];    // => president: "Mary", vicePresident "Name", ...
     
//       for(var role in ballot) {  
//         var vote_president = ballot.president;  // => "Mary", "Name", "Name"
//         var vote_vicePresident = ballot.vicePresident;
//         var vote_secretary = ballot.secretary;
//         var vote_treasurer = ballot.treasurer;  
//       }
    
//      //voteCount.president[vote_president] += vote_president; // Set paramaters bob to equal bob with the number of occurences /! Issue with undefined
    
//      if(voteCount.president[vote_president]) {   
//         voteCount.president[vote_president] += parseInt(1);
//       }
//     else {
//       voteCount.president[vote_president] = parseInt(1);
//     }

//      if(voteCount.vicePresident[vote_vicePresident]) {   
//         voteCount.vicePresident[vote_vicePresident] += parseInt(1);
//       }
//     else {
//       voteCount.vicePresident[vote_vicePresident] = parseInt(1);
//     }
    
//     if(voteCount.secretary[vote_secretary]) {   
//         voteCount.secretary[vote_secretary] += parseInt(1);
//       }
//     else {
//       voteCount.secretary[vote_secretary] = parseInt(1);
//     }
    
//     if(voteCount.treasurer[vote_treasurer]) {   
//         voteCount.treasurer[vote_treasurer] += parseInt(1);
//       }
//     else {
//       voteCount.treasurer[vote_treasurer] = parseInt(1);
//     }
//   }  
//     console.log(voteCount);
  
// }

// election(votes); // Call function

// // take largest value from voteCount and push the name to officers (not the numbers)

// function winner(voteCount) {
//   for(var office in voteCount) {   // president, vicePresicent etc.
//       var maxVote = 0; // Numerical placeholder to compare numbers
//       var winner = ""; // placeholder 
//       var officePosition = voteCount[office];
//         for(var name in officePosition) {  // Bob, Mary etc.
//           var tally = officePosition[name];
                      
//           if (tally > maxVote){
//             maxVote = tally;
//             winner = name;
//         }
//           officers[office] = winner;
//       }
//     }
//   console.log(officers);
// }

// winner(voteCount);

// __________________________________________
// Refactored Solution

function assembleVotes(votes) {
  for(var voter in votes) {  
    var ballot  = votes[voter];
      for(var role in ballot) {  
          if(voteCount[role][ballot[role]]) {   
            voteCount[role][ballot[role]] += parseInt(1);
          }
           else {
          voteCount[role][ballot[role]] = parseInt(1);
          }
      }
  }  
}
assembleVotes(votes); // Call function

// take largest value from voteCount and push the name to officers (not the numbers)

function pickWinner(voteCount) {
  for(var office in voteCount) {   // president, vicePresicent etc.
      var maxVote = 0; // Numerical placeholder to compare numbers
      var winner = ""; // placeholder 
      var officePosition = voteCount[office];
        for(var name in officePosition) {  // Bob, Mary etc.
          var tally = officePosition[name];
                      
          if (tally > maxVote){
            maxVote = tally;
            winner = name;
        }
          officers[office] = winner;
      }
    }
}

pickWinner(voteCount);

// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
  The for(var … in …) loop is very helpful to iterate over nested objects.
  At first we tried to nest the 'nested object' in the loop itself, but it became very confusing and didn't work out well… 
  So we used a for (var … in …) two times: once for the outer object and once for the inner object.

Were you able to find useful methods to help you with this?
  Not specifically, the for(var … in … ) loop was very helpful, but this is a relatively standard loop.
  We used the parseInt to add the number of votes per officer-role. This was helpful because if you create a new object-parameter, it's NaN.

What concepts were solidified in the process of working through this challenge?
  I found this challenge quite hard to work through… and now that it's finished, it looks very simple and straightforward…
  By spending time on this I'm sure we both solidified following apspects:
  * Syntax: When and where to use dot vs bracket notations or when to use semi-colons.
  * How to chain object parameters to digg a level deeper
  * How to use placeholders to write out (variable) accessing / writing commands. (ie. to obtain votes or to push them into new objects)
*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)