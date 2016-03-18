# For this file, we have a to populate the river every time we run this script file.
# forth.populate( fish1 )
# forth.populate( fish2 )
# forth.populate( fish3 ) etc.
# Now we need to feed out hungry bear Yogi,
# yogi.eat( forth )
# This will take in the river array and pop off what ever is at the end, store it in " fish " and the bear calls the fish from there. Now Yogi has a fish in his stomach. 

require( 'pry-byebug' )

class Bear

  attr_reader( :name, :stomach )

  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat( river )
    @stomach.push( river.take_fish() )
  end

end

class Fish

  attr_reader( :name, :breed )

  def initialize(name, colour)
    @name = name
    @breed = colour
  end

end

class River

  attr_reader(:fishes)

  def initialize
    @fishes = []
  end

  def populate(fish)
    @fishes.push( fish )
  end

  def take_fish()
    @fishes.pop()
  end

end


yogi = Bear.new("Yogi")

fish1 = Fish.new("Bon", "red")
fish2 = Fish.new("Jovi", "yellow")
fish3 = Fish.new("Bob", "blue")
fish4 = Fish.new("Reese", "orange")
fish5 = Fish.new("George", "green")

forth = River.new()

binding.pry
nil

## Give fish a name attribute (instance variable)
## Create method to retrieve name           ( fish1.name )
## Create a River class

## A river should hold fishes ( perhaps in an array? )
## Pass fish to river


