# # Research Methods

# # I spent [0.45] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  p source.grep(/#{ thing_to_find }/)
end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by {|name,age| age}
end

# Identify and describe the Ruby method(s) you implemented.
# I implemented the Ruby method .sort_by to place the array and hash elements in the desired order.
    # Array: I thought I could use the plain .sort method, but because the array in the rspec file contains both strings and integers, I provided a code-block that converts alle elements to strings before placing them in alphabetical order.
    # Hash: The code block, combined with the .sort_by method contains the key (name) and value (age) in the piping. Because I specify that the iteration needs to sort on "age", it will implicitly sort on the "values" of the hash.
#


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I implemented the Ruby method .sort_by to place the array and hash elements in the desired order.
    # Array (sort elements alphabetically):
      # The enumerable .sort method iterates over each array element and places the elements by default in an alphabetical order.
      # It gets tricky however when the array contains different object types (ie. both integers and strings).
      # I opted to use the .sort_by method, which allows me to provide a code block.
      # In this code block you can convert each array to a string, when taking it in consideration for the sorting command.
      # By using the code-block and by avoiding the use of .sort!, the method is non-destructive and will retain the original order.


    # Hash (sort by age)
      # Hashes have two elements containing information (key and value).
      # You might want to sort on values with the following code: source.values.sort, but this method converts the values to an array first and then sorts the array.
      # A better option is to use the .sort_by method and specify on which element you want to sort the hash (key or value)
      # You do this by using a code-block. Between the pipes, you provide the names for the "keys" and the "values", and then specify on which one to sort.
      # Ruby automatically sorts from smaller to larger numbers, so there was no other sorting-logic to include in the code-block.
      # If you would be asked to sort from old to young, you could use the spaceship operator to specify the order.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#