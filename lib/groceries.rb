class GroceryList
  attr_accessor :grocery_list, :owner, :random_item, :answer
  def initialize(args)
    @grocery_list = args[:grocery_list] 
    @owner        = args[:owner] 
    @answer       = args[:answer]      || answer = nil
    @random_item  = args[:random_item] || random_item
  end

  def self.grocery_list(list)
    IO.read(list).split("\n").map { |item| item.scan(/[a-z]/).join("") }
  end

  def random_item
    @random_item = @grocery_list.sample
  end

  def gets_answer_about_groceries
    puts "Hey! did you get the #{random_item}? (Y/N)"
    @answer = gets.chomp
  end

  def pickup_item?
    @answer == "Y" || @answer == "yes"
  end

  def delete_item
    @grocery_list.delete(@random_item) if pickup_item?
  end

  def to_s
    "you need to pick up the following from the store:\n#{@grocery_list}."
  end
end