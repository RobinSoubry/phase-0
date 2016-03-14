# # Research Methods

# # I spent [0.45] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1: Shin Wang
def my_array_finding_method(source, thing_to_find)
  # final_array = []
  # source.each do |word|
  #   if word.class == thing_to_find.class && word.include?(thing_to_find) == true
  #     final_array << word
  #   end
  # end
  # return final_array
  ###### refactor
  return source.grep(/#{ thing_to_find }/)
end

def my_hash_finding_method(source, thing_to_find)
  final_array = []
  source.each do |key, value|
    if value == thing_to_find
      final_array << key
    end
  end
  return final_array
end

# Identify and describe the Ruby method(s) you implemented.
# Methods used: .each .class .include?
# .each is an enumerable that executes an action to each object in the array.
# .class determines the object type in question
# .include? is able to look within a string to find elememts of the string that are matching.

# Person 2: Victoria Solorzano
def my_array_modification_method!(input_array, add_num)
  input_array.each_with_index do |item, index|
    if item.is_a?(Numeric)
      input_array[index] += add_num
    end
  end
  return input_array
end

def my_hash_modification_method!(input_hash, add_years)
  input_hash.each do |k,v|
    input_hash[k] += add_years
  end
return input_hash
end

#The ruby methods that I used were:
# .each_with_index - this method is used on arrays, and will go through each item in an array and allow you to assign a variable for the item as well as the index. This method does not inherently change the array it is operating on, you have to reference the array within the block to modify it.
# .is_a? - this method will check the object it is operating on to see if it belongs to a particular class. If it is, returns true... if not returns false.
# .each - this method iterates through each element in your hash or array. It needs to be provided with a variable name, for arrays just one argument, for hashes two arguments, one for the key and one for the value. Like .each_with_index it does not directly modify the object it's indexing through. For example, in a hash you can't just say "hash.each {|k,v| v*2}" to return a hash with the values doubled. You must refer to the hash directly like "hash.each {|k,v| hash[k] = v*2}".



# Person 3: Robin Soubry
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


# Person 4: Chris Lamkin
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |substring|
    if substring.class == thing_to_delete.class && substring.include?(thing_to_delete) == true
      source.delete(substring)
    end
  end
  return source
  end

def my_hash_deletion_method!(source, thing_to_delete)
  updated_hash = source.reject! {|k,v| k == thing_to_delete}
  return updated_hash
end

# Identify and describe the Ruby method(s) you implemented.
#.class determines the object's class
#.include? will return true if the given object is present.
#.delete will delete an element from an array
#.reject! will remove (destructively) a hash pair from a hash



# Person 5: Buck Melton
def my_array_splitting_method(source)

  split_array = []
  array_1 = []
  array_2 = []

  source.each do | item |
    if item.is_a?(Integer)
      array_1.push(item)
    else
      array_2.push(item)
    end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

def my_hash_splitting_method(source, age)

  split_array = []
  array_1 = []
  array_2 = []

  source.keys.each do | the_key |
    new_item = [the_key, source[the_key]]
    if source[the_key] <= 4
      array_1.push(new_item)
    else
      array_2.push(new_item)
     end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end


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
# See Reflection File