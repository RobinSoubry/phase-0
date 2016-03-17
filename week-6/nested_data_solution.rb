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

# Refactoring

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