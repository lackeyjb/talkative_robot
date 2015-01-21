class Person
  attr_reader :name, :gender
  attr_accessor :age
  def initialize(args)
    @name   = args[:name]   || "Anonymous"
    @age    = args[:age]    || nil
    @gender = args[:gender] || "unknown"
  end
end