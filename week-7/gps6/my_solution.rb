# Virus Predictor

# I worked on this challenge with: Diana Ozemebhoya.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
=begin
	* require: Is used to summon/activate built-in libraries and pre-installed packages. The terminal will look throughout the load-bath locations to link the files.
	* require_relative: Is used to access own application files (which can be rspec tests, data lists etc.) These file(s) are not already known in a library, so you have to be specific about the location, just like you would include a stylesheet to your html code etc. By default, you can include a file by calling 'require_relative' + 'filen_name'. If the file would happen to be located at another directory, you could navigate to the file with ../ etc.
=end
require_relative 'state_data'

class VirusPredictor

=begin
Initialize is the core 'template/blueprint' of the class and takes arguments to populate the instance variables of the new object. Initialize is automatically called when a new object is created with the .new method on the class name.
=end
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



=begin
virus_effects returns two methods which describe the number of people that will likely die and how fast the virus will spread.
=end
#INITIAL METHOD
  # def virus_effects
  #   predicted_deaths(@population_density, @population, @state)
  #   speed_of_spread(@population_density, @state)
  # end

#REFACTORED METHOD - (Argument-list is redundant because instance variables are accessible across the instance.)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


=begin
generate_report is a new method that iterates over all the elements in the hash 'STATE_DATA'. This method creates 'temoprary' instances of the VirusPredictor class and runs the virus_effects method on those 'temporary' instances.
This method is a class method (as opposed to instance method): This allows us to call the method outside of the class and without having an instance object to call it upon.
=end
  def self.generate_report
  	STATE_DATA.each do |key, value|
       new_state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
	   new_state.virus_effects
    end
  end



=begin
private: Everything we write below 'private' will not work outside of the class. (It will not be public)
=end
  private



=begin
predictive_deaths is a method that prints a string with the estimated number of deaths, based on the population density and the population of a state. 
=end
# INITIAL METHOD
  # def predicted_deaths(population_density, population, state)
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  # end
#REFACTORED METHOD - (Argument-list is redundant because instance variables are accessible across the instance.)
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end



=begin
speed_of_spread is a method that prints a string with the velocity at which the disease will spread per state. 
=end
# INITIAL METHOD
  # def speed_of_spread(population_density, state) #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n"
  # end
#REFACTORED METHOD - (Argument-list is redundant because instance variables are accessible across the instance.)
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
VirusPredictor.generate_report

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
	The notation of the key pointing to the value.
	In one notation, the => is used to point to the value.
	In the other notation, the 'key: value' notation is used.
	There is no big difference except for readability.

What does require_relative do? How is it different from require?
	require_relative allows to include other files (test-designs, data, other Ruby files, etc) into the code. 
	Unlike 'require', the 'require_relative' keyword is used to link the programmer's own files, not a predifined/built-in library of Ruby.

What are some ways to iterate through a hash?
	We iterated over the hash with the .each do |key, value| method, which takes iterates over each key-value pair and allows you to manipulate the 'key' or 'value' in the code-block.
	We could also have used the method .each_key because we did not really need the value of the hash (it is already assigned through the instance variables.)
		(http://docs.ruby-lang.org/en/2.0.0/Hash.html#method-i-each_key)

When refactoring virus_effects, what stood out to you about the variables, if anything?
	The arguments of both methods in virus_effects were redundant.
	Instance variables are accessible throughout all methods of the instance, so you don't need to explicitly input them in the methods anymore.

What concept did you most solidify in this challenge?
	This was a very interesting GPS session!
	Next to mixing together both Ruby and JavaScript syntax, I obtained a more solid understanding of:
	* How to require other files into the current file/code.
	* How to make specific methods unavailable outside of the class with the keyword 'private'.
	* Advantages and disadvantages of adding a method into the class or defining it outside of the class
		(concerns about scope, separation of concerns - interference with potential other parts of the application etc.)
	* Scope aspects and syntax of:
		- STATE_DATA, which is accessible thoughout the whole class because it's a constant (UpCase writing)
		- Conversion of the instance method .generate_report to a class method by prefixing it with 'self' or the class name.
			Allows to call the method without requiring a class-instance to call it on.
=end