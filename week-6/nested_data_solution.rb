# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================
# p hash [outer:][inner:]["almost"][3]
p hash [:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"
nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

new_array = number_array.map do |element| 
 if element.kind_of?(Array)
   element.map {|inner| inner + 5}
 else 
     element + 5
 end
end
p new_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
new_array = startup_names.map do |first_level| 
 if first_level.kind_of?(Array)
   first_level.map do |second_level|
       if second_level.kind_of?(Array) 
       second_level.map {|inner| inner.to_s + "ly"}
     else
       second_level.to_s + "ly"
     end
   end
 else 
     first_level.to_s + "ly"
 end
end
p new_array

# Refactoring Bonus

new_startup_names = startup_names.map do |first_level| 
 if first_level.kind_of?(Array)
   first_level.map do |second_level|
       if second_level.kind_of?(Array) 
       second_level.map {|inner| inner.to_s + "ly"}
     else
       second_level.to_s + "ly"
     end
   end
 else 
     first_level.to_s + "ly"
 end
end
p new_startup_names

# REFLECTION
=begin
What are some general rules you can apply to nested arrays?
  Nested arrays have a level of depth that can be expressed by a number of degrees.
  When you want to access an element inside a nested array, you can 'chain' the number indices together.
    The number of chained indices should equal the number of levels that you want to dig into in the array.
  For example array[0][2][0] => This notation aims to access a the first element of a third-level array.

What are some ways you can iterate over nested arrays?
  To iterate over an array, you could use .each and .map.
  However, to iterate over a nested array, you want to iterate again over the elements that are also arrays.
    * You can identify whether an array element is an array by using the .kind_of?(Array) method in an if statement.
      * If the statement is true (first-level element = array), you are can iterate over the 2nd-level array with another .each or .map method on the first-level element
      * If the statement is not true (first-level element != array), you are can execute a code to the first-level element.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We used methods that I was already familiar with, but combined them in a different way.
  For example, we used the .map method in nested iterations. to access and modify the individual elements in the bonus release.
  Another helpful method was: .kind_of?()
=end