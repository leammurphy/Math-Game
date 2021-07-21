class Player 
  attr_reader :name
  attr_accessor :lives
  def initialize(name)  #initializes (method) a player with a name and default
    @name = name        #life points
    @lives = 3
  end
end

# @ is indicative of an instance variable. An instance var is used to give
# objects their own private space to store data. 
# Remember, Objects are important for two things: 
  # 1. State: Storing data describing themselves (variables)
            # Instance Vars store data, they KNOW things.
  # 2. Behavior: Defining actions that can be performed on them (methods)
            # Methods make things happen, they DO things.

# Why do we use attribute accessors? 
# If we have instance vars we wish to expose to the "outside world" we
# HAVE to define a method 