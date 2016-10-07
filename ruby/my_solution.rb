## Virus Predictor, assignments focusing on hashes.

# I worked on this challenge with Kim Tran.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #require relative, your file will be searched in the current folder, that you call out.
#require doesn't have that context, and will just look in that parent director.

class VirusPredictor
  #initialize instance variables, with state_of_origin, population_density, population as it's parameters.
  def initialize(state_of_origin, population_density, population) #only list out parameters in initialize
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects #run speed_of_spread and predicted_death.
    #predicted_deaths(@population_density, @population, @state)
    #speed_of_spread(@population_density, @state)
    #not the same variable, compared to @population_density in line 34
    predicted_deaths
    speed_of_spread
  end

  private #private is protected, and you can't use it outside of the class
  #you can't move it above virus_effects because then it will no longer be a public method.

  def predicted_deaths
    # predicted deaths is solely based on population density
    #.floor is when you're comparing 2 things 1.2.floor will give you 1.
    #returns the largest integer float. rounding down to the "floor"
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
    #Made number of deaths available to spped of spread to print one entire sentence
    @number_of_deaths = number_of_deaths
    

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #No need to set speed = 0 and increment
    speed = 0

    if @population_density >= 200
      speed = 0.5
    else 
      x = (@population_density/50).floor
      x.times do
        speed += 0.5
      end 
    end
    

    puts " {@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state
# State_data has constant variable scope, in the same code as your driver code... but since it's a constant, it has a wider scope.


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, population_info|
  state_instance = VirusPredictor.new(state,population_info[:population_density], population_info[:population])
  state_instance.virus_effects
end

#Reflection
# What are the differences between the two different hash syntaxes shown in the state_data file?
#One has is storing multiple values while the other is only storing one. 
# What does require_relative do? How is it different from require?
#require relative, your file will be searched in the current folder, that you call out.
#require doesn't have that context, and will just look in that parent director.
# What are some ways to iterate through a hash?
#.Each method, conditional methods, .each_key
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#They were being used in both the parameters for the other two methods as well as in the iteration method
# What concept did you most solidify in this challenge?
#Hashes: I understand now how hashes work within iteration as well as how they are called. 