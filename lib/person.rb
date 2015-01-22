class Person
  attr_reader :name, :gender
  attr_accessor :age
  def initialize(args)
    @name   = args[:name]   || "Anonymous"
    @age    = args[:age]    
    @gender = args[:gender] || "unknown"
  end

  def male?
    gender == "M" || gender == "Male"
  end
end

