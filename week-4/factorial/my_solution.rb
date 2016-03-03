# Factorial

# I worked on this challenge [with: Shaun Sweet].


#Method takes an integer 
# IF input == 0 then return 1
# elsif 
# we will need 3 variables to make the loop work
# the first one being the input (number)
# the second one is the count of the iteration
# and the third variable will be the variable that stores the calculation
#Last, we will return the product

# Your Solution Below
def factorial(number)
 if number == 0 || number == 1
     return 1
 else 
     i = 1
     product = 1
     while i <= number
         product = product * i
         i += 1
     end
 end
 return product
end


#Refactored code
def factorial(number)
  if number == 0
      return 1
  else 
      i = 1
      product = 1
      while i <= number
          product *= i
          i += 1
      end
  end
  return product
end