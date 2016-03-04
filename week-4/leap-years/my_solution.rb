# Leap Years

# I worked on this challenge with: Sibel Ergener.
def leap_year?(year)
	#divisible by 400 ==true
	if year%400==0
		p true
	elsif year%100==0
		p false
	elsif year%4==0
		p true
	#divisible by 100 ==false
	#divisible by 4 == true
	else 
		p false
	end
end

# Your Solution Below