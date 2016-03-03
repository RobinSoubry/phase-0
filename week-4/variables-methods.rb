# Challenge 1: Greeting
puts 'What is your firstname?'
first_name = gets.chomp

puts 'What is your middle name?'
middle_name = gets.chomp

puts 'What is your lastname?'
last_name = gets.chomp

puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

# Challenge 2: Numbers
puts 'What is your favorite number?'
fav_num = gets.chomp.to_i
fav_num2 = fav_num + 1
puts 'How about ' + fav_num2.to_s + ' ? This is a bigger better number than ' + fav_num.to_s
