class Person
  def initialize(args)
    @gender = args[:gender]
  end

  def male?
    @gender == "M"
  end
end