# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # CONVERT string to ARRAY
  # CREATE hash with default value equal to one
  # LOOP through ARRAY to add hash keys
  # Assign item value to a hash key
  # print the list to the console [can you use one of your other methods here?]
# output: A hash with values equal to one

# Method to add an item to a list
# input: item name and optional quantity
# steps: Add new item key/value pairs to the hash
# output: Modified hash, with the added key/value

# Method to remove an item from the list
# input: Key of the item that needs to be removed
# steps: Call delete method for the specific key
# output: Modified hash, with the deleted key removed

# Method to update the quantity of an item
# input: Key for which item we wnt to update + new value
# steps: Reset the value for the key.
# output: Modified hash, with the value updated for the specific key

# Method to print a list and make it look pretty
# input: Hash with items and quantities
# steps:
 # Iterate the hash with a formatted text.
 # Inside the iteration, the keys and values will be converted to strings and wrapped in nice structure.
# output: Values printed on screen.

# INITIAL SOLUTION
# def create_list (string)
#  items = string.split()
#  list = Hash.new (1)
#  items.each do |item|
#     list[item] = 1
#  end
#  return list
# end

# def add_item(list, item_name, quantity=1)
#   list[item_name] = quantity
#   return list
# end

# def remove_item(list, item_name)
#   list.delete(item_name)
#   return list
# end

# def update_item(list, item_name, quantity)
#   list[item_name] = quantity
#   puts list
#   return list
# end

# def print_list(list)
#   puts "My Grocery list"
#   list.each do |k, v|
#   key = k.capitalize
#   puts "#{key} : #{v}"
#   end
# end

# list = create_list("carrots apples cereal pizza")
# add_item(list, "Tomatoes")
# remove_item(list, "pizza")
# update_item(list, "apples", 6)
# print_list(list)

# REFACTORED CODE
def create_list (grocery_string)
 items = grocery_string.split()
 list = Hash.new (1)
 items.each {|item| list[item] = 1}
 return list
end

def add_item(list, item_name, quantity=1)
  list[item_name] = quantity
  return list
end

def remove_item(list, item_name)
  list.delete(item_name)
  return list
end

def update_item(list, item_name, quantity)
  list[item_name] = quantity
  return list
end

def print_list(list)
  puts "My Grocery list"
  list.each do |k, v|
    key = k.capitalize
    puts "#{key} : #{v}"
  end
end

# DEMO DATA
list = create_list("carrots apples cereal pizza")
add_item(list, "Tomatoes")
remove_item(list, "pizza")
update_item(list, "apples", 6)
print_list(list)

# REFLECTION
=begin
What did you learn about pseudocode from working on this challenge?
  The pseudocode is relatively straightforward.
  We had a brief discussion on whether to return the original array, or rather a success message if the method ran well or not.
  It allowed us to better understand and list the requirements for the challenge, and come up with a plan as a *pair*.

What are the tradeoffs of using Arrays and Hashes for this challenge?
  We used Hashes because they allow to keep a direct link between the item to buy and the quanities needed of that item.
  Arrays would also work, but the disadvantage is that you only have one value and it's index.
    So you will need to use two arrays (one with the item to buy and another array with the quantity) and make sure the array-elements correspond with the same index value.

What does a method return?
  Our methods always return the latest version of "list", which is a hash of items to buy with their respective quantities.
  This returned list can be used as input argument of other methods.

What kind of things can you pass into methods as arguments?
  In arguments you can pass direct user input (basically any object), but you can also use objects from other methods as an argument.

How can you pass information between methods?
  You can pass information between methods by including objects from one method as an argument for the other method.

What concepts were solidified in this challenge, and what concepts are still confusing?
  Solidified:
    - How to iterate over arrays and create / populate hashes from it.
    - Setting a default value for a hash: Setting a default for unknown keys is something different than assigning default values.
  Still confusing:
    - Transfering information between methods: It's clear how to make it work with one object to pass over to another method, but I'm confused how it can work with multiple objects. (some research to be done here)
=end