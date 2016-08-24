###################################
######  CLASS METHODS & SELF  #####
###################################

#Currently we have been creating classes expect many object to be created from them to utilize their functionality.

#With the help of the keyword 'self', we will have


###################################
######     LEARNING GOALS     #####
###################################

# Review what we've learned about classes so far:
    #Constructor (initialize)
    #Instance Methods
    #Attributes (stored in instance variables)

# Discover new functionality within classes:
    # Class Methods and
    # self


###################################
######      CLASS_REVIEW      #####
###################################

## INSTANCE VARIABLES
    ## ATTRIBUTES
    ##  Ex: username , email, age, something that all objects might have. Each one will have specific details.

## INSTANCE METHODS
    ## behaviors
      ## ex: make a post, send a message, like a post, poke someone, create a photo album, the things that each object is allowed to do.

    ## INITIALIZE METHOD
    # actions that are preformed every time the class is set up.
# class User
#   # sometimes if you just one to place them here because you know you're going to use them.
#
#
#   def initialize
#     @name
#   end
#
#   def add_username(name)
#     @name = name
#   end
# end
#
# user1 = User.new
# puts user1.methods
# gives you a list of all the methods.


# class Order
#   def initialize(subtotal, quantity) # <= instance method
#     @subtotal = subtotal
#     @quantity = quantity
#   end
#
#   def total # <= instance method
#     @subtotal * @quantity
#   end
#
#   def to_money # <= instance method
#     # in the line below, `total` is invoking the instance method above
#     "$" + sprintf("%0.02f", total / 100)
#   end
# end
#
# order = Order.new(1000, 2)
# order.to_money #=> $20.00


###################################
########    CLASS METHODS   #######
########     USING SELF     #######
###################################

#Class methods are called directly by the class and not by an instance of the class.
# class Kitten
# ##############################################
#   # typically how we write it.
#   # def say_meow
#   #   puts "meow"
#   # end
#   # if you wanted to use this later. You should use return.
# ##############################################
#   def self.say_meow
#     return "meow"
#   end
# end
#
# puts Kitten.say_meow



###################################
######    LETS TRY IT OUT!    #####
###################################


class Pawn
  attr_reader :position
  def initialize(position)
    @position = position
  end

  # This is the class method, it starts with self.
  # It is only called on the class directly Pawn.make_row
  def self.make_row(side)
    if side == "white"
      num = 2
    else
      num = 7
    end

    pawns = []
    ("a".."h").each do |letter|
      # Spawning itself...
      # a new object of pawn with letter and number associated.
      # taking in one these leters and number from above.
      pawns << self.new("#{letter}#{num}")
    end

    pawns
  end
end
#
#make one pawn
one_pawn = Pawn.new("A2")
one_pawn.make_row("purple")
# we cannot call a method on an object.
# if its spawning itself you can only call it on class.


#make a whole row of pawns
# pawns = Pawn.make_row("black")
# =>      class itself
# #What is being stored in this local variable pawns?
# print pawns
#
# pawns.each do |pawn|
#   puts pawn.position
# end

# #WHAT IS THIS DOING!?
# puts pawns.shuffle.first.position

# like to go over what each of these are again.
# p




###################################
######   WHERE IS THIS USED?  #####
###################################
#Class methods are for anything that does not deal with an individual instance of a class
## need to think about this more. I wouldnt want to make a class method for send message.


#In Gems, like faker
  # https://github.com/stympy/faker/blob/master/lib/faker/hacker.rb

#When we get into databases, our data will be tied to a class. That class will have some premade class methods for us to use:  .find, .last, .where
#Those class methods allow you to find specific objects of that class based on an specified attributes of that class.
