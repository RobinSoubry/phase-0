
// Design Basic Game Solo Challenge

// This is a solo challenge

// GAME: SPARTACUS RUN
// ===================
// Your mission description: Finish a race in the shortest time and manage your energy level while tackling obstacles
// Overall mission: Finish with the race first
// Goals: Tackle obstacles
// Characters: Athlete(s)
// Objects: Athlete, Obstacle, Nutrition
// Functions: Choose Nutrition

// PSEUDO CODE
// ===========
/*  Input: The game will prompt the user for input:
      * At the start of the game, the player will be asked for his name.
      * For each round, the player can chose whether to take the challenge (and win points) OR beef up energy-levels with a snack.
      * IF the player choses a snack, he/she will be able to chose snacks from a list.
    Output:
      * The game has one final outcome: A score-board, presenting the winner and giving an overview of the 'weighted score of the game'.
      * After each round, the program will print the status (time and score) of each player to the console.
    Steps:
      * Step 1: Create instructions for the game and RETURN them to the user with CONFIRM.
      * Step 2: Create two players.
                Each player is an object of the type 'Athlete'.
                Ask the player for his name with the prompt command.
      * Step 3: Create different 'snacks': these are objects with properties for:
                  - Time to digest
                  - Energy value
      * Step 4: Create different 'obstacles': these are objects with properties for:
                  - Time required (added to length of the race)
                  - Energy required (will be reduced from energy-balance)
      * Step 5: Define a function 'Play' that prompts the user for what he wants to do that round:
                  - Take the challenge: IF the player wants to take the challenge, the program will check if the player has sufficient energy-balance. IF the player has sufficient energy balance, the player's parameter values for 'energy' , 'time' and 'score' will be updated. ELSE, the player will receive a message that he has not enough energy and needs to beef up his/her energy levels.
                  - Eat a snack: IF the player wants to eat a snack, a menu of high-energy snacks will be displayed from which the user can pick a value. The energy value and time-to-digest of the specific snack will be added to parameters of the player.
      * Step 6: Define a function to generate and display the scoreboard:
                IF the weighted score (time/(score+1) of player 1 is greater than the weighted score of player 2, Player 1 wins
                ELSE IF If the weighted score of player 2 is greater than the weighted score of player one, player 2 wins.
                ELSE The weighted score of both players is equal. Advice them to shake hands and play again.
      * Step 7: Call the different functions.
*/

// Initial Code
// SETTING OF THE GAME
// ===================
// Print rules of the game
// confirm("You are about to enter the Spartacus Run.\nThis is a race in which you will have prove your athlete-skills in 5 different rounds.\nIn each round, you can chose to stock up your energy levels by eating a snack (max. three during the tournament) OR you can take on the challenge (by which you will earn 25 points).\nIf you eat a snack for a specific round, you cannot participate in the challenge (nor win 25 points).\n Be careful: If you over-estimate your energy-levels, you will not be able to complete the challenge (you don't get any points) and you will have missed a round to re-stock your energy.\n\nThe winner will be chosen based on the time to completion and the score");

// // Initializing athletes
// function Athlete (athleteName) {
//   this.name = athleteName,
//   this.time = 0,
//   this.energy = 100,
//   this.score = 0,
//   this.snacks = 0
// }

// var athlete1_name = prompt("Athlete 1: What's your name athlete?");
// var athlete1 = new Athlete (athlete1_name);
// var athlete2_name = prompt("Athlete 2: What's your name soldier?");
// var athlete2 = new Athlete (athlete2_name);

// // Initializing energy boosts to replenish energy-levels
// function Snack (snackName, energyBoost, digestionTime) {
//   this.name = snackName,
//   this.energy = energyBoost,
//   this.time = digestionTime
// }

// var banana = new Snack("Banana", 20, 5);
// var apple = new Snack("Apple", 10, 10);
// var cliffbar = new Snack("Cliffbar", 30, 3);
// var powerjuice = new Snack("Powerjuice", 45, 2);
// var doping = new Snack("Doping", 200, 500); // Doping is cheating!

// // Initializing obstacles that the athletes have to overcome
// function Obstacle (obstacleName, obstacleDescription, energyRequirement, timeRequirement, score) {
//   this.name = obstacleName,
//   this.description = obstacleDescription,
//   this.energy = energyRequirement,
//   this.time = timeRequirement,
//   this.score = score
// }

// var mudPool = new Obstacle("Mud Pool", "Crawl through a pool of mud", 25, 4, 25);
// var devilsStaircase = new Obstacle("Devil's Staircase","Climb up a staircase of 10 stais, each stair is 7 feet high" ,75 , 4, 25);
// var angelFall = new Obstacle("Angel Falls" ,"Jump in the river from 40ft high" ,10 , 4, 25);
// var spiderWeb = new Obstacle("Spider Web" ,"Make your way through an electrified spiderweb" ,25 , 10, 25);
// var landSlide = new Obstacle("Land Slide" ,"Crawl up a 20 degree slope of mud" ,25 , 12, 25);

// function Play (player, challenge) {
// 	var action = prompt("OK " + player.name + "! What do you want to do?\nEat a SNACK? --> Press 'S'\nDo a CHALLENGE? --> Press 'C'")
//     switch (action) {
//       case 'S':
//         if(player.snacks > 3){
//           console.log("You have had too many snacks");
//         } else{
//           // Add 1 to the number of snacks
//           player.snacks += 1;
          
//           // Ask the athlete which snack he wants
//           var snack = prompt("What snack do you want to eat?\nBANANA --> Press 'B'\nAPPLE --> Press 'A'\nCLIFFBAR --> Press 'C'\nPOWERJUICE --> Press 'P'\nDOPING --> Press 'D")
          
//           // Level up the athlete's energy levels obtained by the snack and the time wasted.
//           switch (snack){
//             case 'B':
//               player.energy += banana.energy;
//               player.time += banana.time;
//               break;
//             case 'A':
//               player.energy += apple.energy;
//               player.time += apple.time;
//               break;
//             case 'C':
//               player.energy += cliffbar.energy;
//               player.time += cliffbar.time;
//               break;
//             case 'P':
//               player.energy += powerjuice.energy;
//               player.time += powerjuice.time;
//               break;
//             case 'D':
//               player.energy += doping.energy;
//               player.time += doping.time;
//               break;
//             default:
//               console.log("Unknown snack");
//           } // Close switch
//         } // Close Else statement
//         break; // Breaks the case for 'snack'
//        case 'C':
//        		if(player.energy >= challenge.energy){
//             player.energy -= challenge.energy;
//             player.time += challenge.time;
//             player.score += challenge.score;
//             console.log(player.name + " completed challenge " + challenge.name);
//        		} else {
//             console.log(player.name + " has insufficient energy for challenge " + challenge.name)
//             confirm("Sorry " + player.name + ",you don't have enough energy to complete this challenge!\n Consider eating a snack next round!");
//           }
//        		break;
//        	default:
//        		console.log("How did you get here?!?")
//     }
//   }

// function Scoreboard (player1, player2){
//    player1.weightedscore = player1.time/(player1.score+1);
//    player2.weightedscore = player2.time/(player2.score+1);
//   if((player1.weightedscore) > (player2.weightedscore)){
//     confirm(player1.name + " wins the contest!\n\n" + player1.name + " has a weigthed score of : " + player1.weightedscore + "\nWheras " + player2.name + " only has a weighted score of: " + player2.weightedscore);
//   }else{
//     confirm(player2.name + " wins the contest!\n\n" + player2.name + " has a weigthed score of : " + player2.weightedscore + "\nWheras " + player1.name + " only has a weighted score of: " + player1.weightedscore);
//   }
// }


// // GAME
// // ====
// //Round 1
// Play(athlete1,mudPool);
// Play(athlete2,mudPool);
// console.log(athlete1.name + ": Time:" + athlete1.time + " Score:" + athlete1.score + "\n" + athlete2.name + ": Time:" + athlete2.time + " Score:" + athlete2.score);
// //Round 2
// Play(athlete1,devilsStaircase);
// Play(athlete2,devilsStaircase);
// console.log(athlete1.name + ": Time:" + athlete1.time + " Score:" + athlete1.score + "\n" + athlete2.name + ": Time:" + athlete2.time + " Score:" + athlete2.score);
// //Round 3
// Play(athlete1,angelFall);
// Play(athlete2,angelFall);
// console.log(athlete1.name + ": Time:" + athlete1.time + " Score:" + athlete1.score + "\n" + athlete2.name + ": Time:" + athlete2.time + " Score:" + athlete2.score);
// //Round 4
// Play(athlete1,spiderWeb);
// Play(athlete2,spiderWeb);
// console.log(athlete1.name + ": Time:" + athlete1.time + " Score:" + athlete1.score + "\n" + athlete2.name + ": Time:" + athlete2.time + " Score:" + athlete2.score);
// //Round 5
// Play(athlete1,landSlide);
// Play(athlete2,landSlide);
// console.log(athlete1.name + ": Time:" + athlete1.time + " Score:" + athlete1.score + "\n" + athlete2.name + ": Time:" + athlete2.time + " Score:" + athlete2.score);

// //Final Scoreboard
// Scoreboard(athlete1,athlete2);


// Refactored Code
confirm("You are about to enter the Spartacus Run.\nThis is a race in which you will have prove your athlete-skills in 5 different rounds.\nIn each round, you can chose to stock up your energy levels by eating a snack (max. three during the tournament) OR you can take on the challenge (by which you will earn 25 points).\nIf you eat a snack for a specific round, you cannot participate in the challenge (nor win 25 points).\n Be careful: If you over-estimate your energy-levels, you will not be able to complete the challenge (you don't get any points) and you will have missed a round to re-stock your energy.\n\nThe winner will be chosen based on the time to completion and the score");

// Initializing athletes
function Athlete (athleteName) {
  this.name = athleteName,
  this.time = 0,
  this.energy = 100,
  this.score = 0,
  this.snacks = 0
}

//var athlete1_name = ;
var athlete1 = new Athlete (prompt("Athlete 1: What's your name Athlete?"));
var athlete2 = new Athlete (prompt("Athlete 2: What's your name Athlete?"));

// Initializing energy boosts to replenish energy-levels
function Snack (snackName, energyBoost, digestionTime) {
  this.name = snackName,
  this.energy = energyBoost,
  this.time = digestionTime
}

var banana = new Snack("Banana", 20, 5);
var apple = new Snack("Apple", 10, 10);
var cliffbar = new Snack("Cliffbar", 30, 5);
var powerjuice = new Snack("Powerjuice", 45, 1);
var redbull = new Snack("Red Bull", 50, 4); // Doping is cheating!

// Initializing obstacles that the athletes have to overcome
function Obstacle (obstacleName, obstacleDescription, energyRequirement, timeRequirement, score) {
  this.name = obstacleName,
  this.description = obstacleDescription,
  this.energy = energyRequirement,
  this.time = timeRequirement,
  this.score = score
}

var mudPool = new Obstacle("Mud Pool", "Crawl through a pool of mud", 25, 4, 25);
var devilsStaircase = new Obstacle("Devil's Staircase","Climb up a staircase of 10 stais, each stair is 7 feet high" ,75 , 4, 25);
var angelFall = new Obstacle("Angel Falls" ,"Jump in the river from 40ft high" ,10 , 4, 25);
var spiderWeb = new Obstacle("Spider Web" ,"Make your way through an electrified spiderweb" ,25 , 10, 25);
var landSlide = new Obstacle("Land Slide" ,"Crawl up a 20 degree slope of mud" ,25 , 12, 25);

function Play (player, challenge) {
  var action = prompt("OK " + player.name + "! What do you want to do?\nEat a SNACK? --> Press 'S'\nDo a CHALLENGE? --> Press 'C'")
    switch (action) {
      case 'S':
        if(player.snacks > 3){
          console.log("You have had too many snacks");
        } else{
          // Add 1 to the number of snacks
          player.snacks += 1;
          
          // Ask the athlete which snack he wants
          var snack = prompt("What snack do you want to eat?\nBANANA --> Press 'B'\nAPPLE --> Press 'A'\nCLIFFBAR --> Press 'C'\nPOWERJUICE --> Press 'P'\nREDBULL --> Press 'R")
          
          // Level up the athlete's energy levels obtained by the snack and the time wasted.
          switch (snack){
            case 'B':
              player.energy += banana.energy;
              player.time += banana.time;
              break;
            case 'A':
              player.energy += apple.energy;
              player.time += apple.time;
              break;
            case 'C':
              player.energy += cliffbar.energy;
              player.time += cliffbar.time;
              break;
            case 'P':
              player.energy += powerjuice.energy;
              player.time += powerjuice.time;
              break;
            case 'R':
              player.energy += redbull.energy;
              player.time += redbull.time;
              break;
            default:
              console.log("Unknown snack");
          } // Close switch
        } // Close Else statement
        break; // Breaks the case for 'snack'
       case 'C':
          if(player.energy >= challenge.energy){
            player.energy -= challenge.energy;
            player.time += challenge.time;
            player.score += challenge.score;
            console.log(player.name + " completed challenge " + challenge.name);
          } else {
            console.log(player.name + " has insufficient energy for challenge " + challenge.name)
            confirm("Sorry " + player.name + ",you don't have enough energy to complete this challenge!\n Consider eating a snack next round!");
          }
          break;
        default:
          console.log("How did you get here?!?")
    }
  }

function Scoreboard (player1, player2){
  player1.weightedscore = Math.round(player1.time/(player1.score+1)*100);
  player2.weightedscore = Math.round(player2.time/(player2.score+1)*100);
  if((player1.weightedscore) > (player2.weightedscore)){
    confirm(player1.name + " wins the contest!\n\n" + player1.name + " has a weigthed score of : " + player1.weightedscore + "\nWheras " + player2.name + " only has a weighted score of: " + player2.weightedscore);
  }else{
    confirm(player2.name + " wins the contest!\n\n" + player2.name + " has a weigthed score of : " + player2.weightedscore + "\nWheras " + player1.name + " only has a weighted score of: " + player1.weightedscore);
  }
}

function LogStatus(){
  console.log(athlete1.name + ": Time:" + athlete1.time + " Score:" + athlete1.score + "\n" + athlete2.name + ": Time:" + athlete2.time + " Score:" + athlete2.score);
}


// GAME
// ====
//Round 1
Play(athlete1,mudPool);
Play(athlete2,mudPool);
LogStatus();
//Round 2
Play(athlete1,devilsStaircase);
Play(athlete2,devilsStaircase);
LogStatus();
//Round 3
Play(athlete1,angelFall);
Play(athlete2,angelFall);
LogStatus();
//Round 4
Play(athlete1,spiderWeb);
Play(athlete2,spiderWeb);
LogStatus();
//Round 5
Play(athlete1,landSlide);
Play(athlete2,landSlide);
LogStatus();

//Final Scoreboard
Scoreboard(athlete1,athlete2);

// Reflection
/*
What was the most difficult part of this challenge?
  This challenge was fun and hard at the same time!
  - I had a hard time pseudo-coding the game as it was not yet fully defined upfront… I had some vague ideas, but often it turned out that there was not really a purpose or 'flow' throughout the game… So I modified quite a bit along the way. User stories would have helped a lot!
  - It's hard to make a 'fun' game without designing the user experience and user flow first!
      It also appears to be hard to set values for rewards and costs… You don't want to be imbalanced too much
  - I did not have a huge difficulty with the code (but I'm sure that things can be simplified A LOT with good refactoring). I tried to reduce the repetition between line 305 - 326 by using an array of all the obstacle-names, and iterate over it with for(var x in array)… but didn't get it to work as I hoped.

What did you learn about creating objects and functions that interact with one another?
  I created quite some objects to interact with each other through calling functions.
  At first I was enthusiastically naming new variables, object paramters etc…
    but after a while I realized I needed more structure to not get confused.
    I'm sure the code could be improved a lot still if I were to use better names and try to keep values 'local' as much as possible.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and 
how do they work?
  I had spent a lot of time in 'designing' the game and making the basics work…
  So unfortunately I haven't had enough time to look in depth for good refactoring alternatives.
  The only thing I used was the Math.round () method that rounds up/down a value to the nearest integer.
    2.01 will round down to two and 2.99 will round up to three.

How can you access and manipulate properties of objects?
  There are several ways/notations to access / or manipulate the properties of objects:
  - Accessing: You can return or print properties with 'return' and 'console.log' respectively. To summon them, you state the object name [dot] property_name
    * Dot-notation: objectName.propertyName;
    * Bracket-notation: objectName["propertyName"]
  - Manipulating: call the object-property and assign a (new) value.
    * Dot-notation: objectName.propertyName = "value";
    * Bracket-notation: objectName["propertyName"] = "value";
        !! If you use the bracket-notation, you should place the property between quotation marks !!
*/