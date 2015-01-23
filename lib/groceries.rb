require_relative './user'

class GroceryList

  attr_accessor :items, :owner, :random_item, :answer
  def initialize(args)
    @items        = args[:items] 
    @owner        = args[:owner]       
    @answer       = args[:answer]      || answer = nil
    @random_item  = args[:random_item] || shuffle_items
  end

  def self.import_list(list)
    # scans for the items in a .txt file that has non-letter characters
    IO.read(list).split("\n").map { |item| item.scan(/[a-z]/).join("") }
  end

  def shuffle_items
    @random_item = items.sample
  end

  def gets_answer_about_groceries
    puts "Hey! did you get the #{random_item}? (Y/N)"
    @answer = gets.chomp.capitalize
  end

  def pickup_item?
    answer == "Y" || answer == "Yes"
  end

  def delete_item
    @items.delete(random_item) if pickup_item?
  end

  def to_s
    "you need to pick up the following from the store:\n#{items}."
  end
end