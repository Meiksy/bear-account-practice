require( 'pry-byebug' )

class Bear

  attr_reader( :name, :stomach )

  def initialize(name)
    @name = name
    @stomach = []
  end

  def eat(fish)
    @stomach.push( fish )
  end

  def hunt(river)
    @stomach.push( fish )
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

  attr_reader(:river)

  def initialize
    @river = []
  end

  def populate(fish)
    @river.push( fish )
  end

end


bear1 = Bear.new("Yogi")

fish1 = Fish.new("Bon", "red")
fish2 = Fish.new("Jovi", "yellow")
fish3 = Fish.new("Bob", "blue")
fish4 = Fish.new("Reese", "orange")
fish5 = Fish.new("George", "green")

river1 = River.new()

binding.pry
nil

## Give fish a name attribute (instance variable)
## Create method to retrieve name           ( fish1.name )
## Create a River class

## A river should hold fishes ( perhaps in an array? )
## Pass fish to river


