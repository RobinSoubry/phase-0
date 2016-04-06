/*
USER STORIES
============
* As a user, I want to create a new grocery list.
* As a user I want to be able add item(s) to my grocery list and indicate the desired quantity.
* As a user I want to be able to remove item(s) from my grocery list.
* As a user I want to be able to update the quantities of items on my grocery list.
* As a user I want to be able to print my grocery list in a good looking way.

PSEUDO-CODE
============
The grocery list will be an object that contains different funtions (new, add, update, delete and print).

New grocery-list
----------------
Input: string of items separated by spaces (example: "carrots apples cereal pizza")
	CALL a function 'create_list' that triggers the creation of a new grocery list.
	This function accepts an argument for parameter 'grocery_string', which accepts a string of different items.
Output:
	An object with the different items on the grocery list as a parameter and a value equal to 1
Steps:
	Step 1: Define a function 'create_list'
	Step 2: Split the input string 'grocery_string' on white-spaces and convert each element to a new object parameter

Add item(s)
-----------
Input: new item to add to the list and an optional quantity
Output: A modified object with the new item (and quantity added) to the object as new parameter/value pair.
Steps:

*/



/*

# steps:
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

*/

