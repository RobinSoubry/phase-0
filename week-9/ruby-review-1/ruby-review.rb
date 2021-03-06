# Ruby Review 1

# Cipher Challenge

# I worked on this challenge with: Abid Ramay & Robin Soubry
# I spent [1] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   # change coded_message into array of single character 
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  
#   #empty array to store decoded message
#   decoded_sentence = []
  
#   #a dictonary to decode each letter with a shift of four characters
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here?
#     #iterate over each element in input variable
    
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    
#     #check to see if a match is found in input as compared to cipher
    
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  # change coded_message into array of single character 
  encoded_message = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  
  #empty array to store decoded message
  @decoded_sentence = []
  
  # a dictonary to decode each letter with a shift of four characters
  cipher = []
  
  ("a".."z").each do |letter|
    cipher << letter
  end
 
  space_array = ["@" , "#" , "$" , "%" , "^" , "&" , "*"]
  
  encoded_message.each do |item|
    
    if (cipher.include?(item))
      @decoded_sentence << cipher[(cipher.index(item) - 4)%26]
    else if (space_array.include?(item))
      @decoded_sentence << " "
    else
      @decoded_sentence << item
    end
  end
end
  p @decoded_sentence.join("")
end

# Driver Test Code:

# p dr_evils_cipher("m^aerx%e&gsoi!")


dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")

dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@mpmoi%xs#gepp%e^hiexl#wxev.")

dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
 @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# # Reflection
# # Keep your reflection limited to 10-15 minutes!
=begin
What concepts did you review in this challenge?
  * Generating arrays with ranges
  * Accessing elements in an array
  * Array manipulations (push elements)
  * If - elsif - else statements

What is still confusing to you about Ruby?
  *Nothing in particular. This challenge was relatively straightforward.
  I sometimes however mix-up JavaScript & Ruby code. 

What are you going to study to get more prepared for Phase 1?
  I took a lot of notes during each phase-0 week. I hope to find the time to go through them to refresh my knowledge abou these.
  As for the confusion between JavaScript and Ruby, I will try to make a cheat-sheet with syntax.
=end
