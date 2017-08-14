class WelcomeController < ApplicationController
  def index
  end
  def sample
  	# Instance Variables : An instance variable
  	# has a name beginning with @, and its scope
  	# is confined to whatever object self refers to.
  	# Two different objects, even if they belong to the
  	# same class, are allowed to have different values
  	# for their instance variables. From outside the 
  	# object, instance variables cannot be altered or
  	# even observed (i.e., ruby's instance variables 
  	# are never public) except by whatever methods are
  	# explicitly provided by the programmer. As with 
  	# globals, instance variables have the nil value 
  	# until they are initialized. 
  	# Instance variables do not need to be declared.
  	# This indicates a flexible object structure; in 
  	# fact, each instance variable is dynamically 
  	# appended to an object when it is first assigned.
  	# Example of Instance Variable Below 

=begin 
  	Another way of multi-line commenting
  	Here
=end 


  	@controller_message = "Hello From Controller"

  end
end
