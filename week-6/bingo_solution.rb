# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline: Create a bingo-game that crosses out the value on a bingo-board if it corresponds with a called bingo number.
    # Input: A new object (board) is initialized with an array that contains 5 sub-arrays of 5 integer elements.
    # Output:
      # Every time a new round is "called", the algorithm checks if the bingo_board contains the called number and replaces it by an 'X'.
      # Each sub-array is then printed to the console, one line per element.

# Step 1: Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
    # Input: Each time the .call method is used, an alphanumeric combination of 1 random letter from the string 'Bingo' is combined with 1 rndom number between 1 and 100.
    # Output: A string that contains 1 letter and 1 or to digits.
    # Steps:
        # 1.1 Generate a random letter from a the word 'bingo'
        # 1.2 Generate a random number between 1 and 100
        # 1.3 Join the letter and number into a string.
    # Assumption:
      # The console generates random letter-number combinations. As they may be called by a person, step 1 is considered to be isolated from the rest of the application.
      # Individual letter / numbers cannot be reused in the .check method! 

# Step 2: Check the called column for the number called.
    # Input: The LETTER from the letter-number combination that is generated in the .call method (step 1.3) corresponds to the colum where the number needs to be checked.
    # Output: A digit between 0 - 4 that can be used as the index number to match the called number with the values in the bingo-table.
    # Steps: Return the first letter of the called letter-number combination (use index zero on the string) it will be reused as an index value to iterate over the board.

# Step 3: If the number is in the column, replace with an 'x'
    # Input:
      # Step 1.3 generates a string with one letter and one or two numbers.
      # Step 2 extracts an index number, based on the value of the letter. This index tells us which element in the sub-array to check the call-number against.
    # Output: Replace matching values for the call number AND the integer on the board for column Y with the string 'X'
    # Steps:
      # 3.1 Iterate through each sub-array for the elements (columns) that have an index equal to the number, generated in step 2)
      # 3.2 IF the call-number and the board number match, REPLACE the value with 'X'

# Step 4: Display a column to the console
    # Input: Step 3.1 iterates over the bingo-board for column (index) Y (as obtained in step 2)
    # Output: All the numbers in column Y
    # Steps: Use the iteration from step 3 to return column-items to the console.

# Step 5: Display the board to the console (prettily)
    # Input: The updated board game, with the integer values replaced by 'X' wherever there is a matchcase.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo_hash = {"B" => 0 , "I" => 1 , "N" => 2, "G" => 3 , "O" => 4}
#     @bingo_array = ["B" , "I" , "N" , "G" , "O"]
#   end

#   def call #Generate a random letter and a random number to use in new call
#     @letter = @bingo_array[rand(0..4)]
#       p @letter
#     @number = rand(1...100).to_s
#       p @number
#     @letter_num = @letter + @number
#       p @letter_num
#   end

#   def check #Check if the generated letter-number combination has a value on the bingo_board
#     #Split @letter_number call to array index and number
#     @call_letter = @letter_num[0]
#       p @call_letter
#     @call_number = @letter_num.slice(1,2).to_i
#       p @call_number

#     #Replace matching number by 'X'
#     @bingo_board.each do |element|
#       p element[@bingo_hash[@call_letter]]
#       if element[@bingo_hash[@call_letter]] == @call_number
#         element[@bingo_hash[@call_letter]] = 'X'
#       end
#     end

#     #print bingo_board nicely to screen
#     @bingo_board.each do |element|
#       p element
#     end
#   end
# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_hash = {"B" => 0 , "I" => 1 , "N" => 2, "G" => 3 , "O" => 4}
  end

  def call #Generate a random letter and a random number to use in new call
    @letter_num = "BINGO"[rand(0..4)] + rand(1..100).to_s
      p "The called number is #{@letter_num}"
  end

  def check #Check if the generated letter-number combination has a value on the bingo_board
    #Split @letter_number call to array index and number
    call_letter = @letter_num[0]
    call_number = @letter_num.slice(1,2).to_i

    #Replace matching number by 'X'
    p "Each element of column #{@call_letter} on the bingo-board: "
    @bingo_board.each do |element|
      #Print values of the column to the console
      p element[@bingo_hash[call_letter]]
      #Replace match-cases by 'X'
      if element[@bingo_hash[call_letter]] == call_number
        element[@bingo_hash[call_letter]] = 'X'
      end
    end

    #print bingo_board nicely to screen
    p "The new bingo-board: "
    @bingo_board.each do |element|
      p element
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I pseudo-coded (very chaotically) on paper to better understand the challenge.
  It took me relatively little time to grasp all the logic and assumptions, but I found it very hard to translate to pseudo-code that is understandable for someone else!
  I tried to be as detailed as possible, but sometimes steps are related to one another, so it's hard notto use concrete variable names to describe ho I expect to proceed.

What are the benefits of using a class for this challenge?
  The class allows to create new objects (new games, with a different board layout) and call a limited number of methods (call and check) repetitively on the same board.

How can you access coordinates in a nested array?
  Nested arrays can be called by chaining the indices of the item you want to access.
  In this challenge however, we want to iterate over each sub-array and return/change the value on a specific index.
    I used a (fixed) hash to define the index values for each column in the word "BINGO" {"B" => 0 , "I" => 1 , "N" => 2, "G" => 3 , "O" => 4}

What methods did you use to access and modify the array?
  I iterated over the array with .each to access (and compare) the value in the array with the called number.
 
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  * I used the index on a string (which I had not done before yet) to separate the letter from the called letter-number combination.
  * I called .slice and to_i to extract the numbers from the called letter_number combination.

How did you determine what should be an instance variable versus a local variable?
  The instance variables can be passed over across methods whereas local variables only exist within the method itself.
  I chose for instance variables in the .initialize method and .call method because these were all used in the .check method.
  New variables in the .check method could be local because they were not required elsewhere.
  I prefer to use local variables whenever I can: this allows me to keep the code cleaner and avoid too much (potential) interference between methods. 

What do you feel is most improved in your refactored solution?
  * I carried out some cut-outs on un-necessary code and redundant variables.
    These helped me structure my thoughts for the initial solution but did not add much value to the final solution.
  * I added some additional comments for enhanced readability.
=end