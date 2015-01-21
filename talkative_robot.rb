class Person
  attr_reader :name, :gender
  attr_accessor :age
  def initialize(args)
    @name = args[:name] || "Anonymous"
    @age = args[:age] || nil
    @gender = args[:gender] || "unknown"
  end

class User < Person
  attr_accessor :fav_spot
  def initialize(args)
    super(args)
    @fav_spot = args[:fav_spot] || "I don't have a favorite place."
  end

  def self.get_users_name
    puts "What's your name?"
    gets.chomp.capitalize
  end

  def self.get_users_gender
    puts "Gender [M or F]:"
    gets.chomp.capitalize
  end

  def self.get_users_age
    puts "How old are you?"
    gets.chomp.to_i
  end

  def self.get_users_favorite_place
    puts "Where's your favorite place to go?"
    gets.chomp
  end

  def prints_user_message
    puts "Hi #{name}, who is #{age} year(s) old!"
    puts "Do you mind if I call you #{name.chars.first}?"
  end

  def user_turns_75_message
    case age
    when 0..74
      puts "You will be 75 years old in #{75 - age} year(s)."
    when 75
      puts "You are #{age}!"
    else
      puts "You turned 75 years old #{age - 75} years ago."
    end
  end

  def male?
    gender == "M" || gender == "Male"
  end

  def young_person_message
    young_person_greeting = male? ? "boy" : "girl"
    "young #{young_person_greeting}"
  end

  def great_great_grandparent_message
    older_gender_greeting = male? ? "pa" : "ma"
    "great-great grand#{older_gender_greeting}"
  end

  def prints_user_age_message
    puts "You're a #{young_person_message}." if age < 12
    puts "You're probably someone's #{great_great_grandparent_message}!!" if age >= 100
  end
end

class Author < Person
  attr_reader :fav_spot
  def initialize
	  @name = "Bryan"
    @age = 25
	  @gender = "M"
    @fav_spot = "Yellowstone"	
  end

  def to_s
    "Hello, this is #{name} the author. I am #{age}, and my favorite place to visit is #{fav_spot}."
	end
end

class GroceryList
  attr_accessor :grocery_list, :user, :random_item, :answer
  def initialize(args)
    @grocery_list = args[:grocery_list] 
    @user = args[:user] 
    @answer = args[:answer] || answer = nil
    @random_item = args[:random_item] || random_item
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

  def owner
    @user
  end

  def to_s
    "you need to pick up the following from the store:\n#{@grocery_list}."
  end
end

name         = User.get_users_name
age          = User.get_users_age
gender       = User.get_users_gender
fav_spot     = User.get_users_favorite_place
current_user = User.new(name: name, age: age, gender: gender, fav_spot: fav_spot)

current_user.prints_user_message
current_user.user_turns_75_message
current_user.prints_user_age_message

bryan_the_author = Author.new
puts bryan_the_author.to_s

list = GroceryList.grocery_list('grocery_list.txt')
grocery_list = GroceryList.new(grocery_list: list, user: current_user)
puts "#{grocery_list.owner.name}, #{grocery_list}"
grocery_list.gets_answer_about_groceries
grocery_list.delete_item
puts "#{grocery_list.owner.name}, #{grocery_list}"