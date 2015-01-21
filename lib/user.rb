require_relative './person'

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