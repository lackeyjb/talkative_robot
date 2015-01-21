require_relative './person'
require_relative './author'

class Author < Person
  attr_reader :fav_spot
  def initialize(args={})
    super(args)
    @name     = "Bryan"
    @age      = 25
    @gender   = "M"
    @fav_spot = "Yellowstone" 
  end

  def to_s
    "Hello, this is #{name} the author. I am #{age}, and my favorite place to visit is #{fav_spot}."
  end
end