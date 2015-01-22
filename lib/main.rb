# Add RSpec tests for each method
# * 100% of Happy path
# * 100% of Sad path
# * Give it to a friend to try and destroy it
# * 100% of Bad path

# Note: Include all previous functions from class
# Note: Ignore any method that includes "get"
# Also: Explain in the Pull Request how the process we did differs from the typical 

require './user'
require './author'
require './groceries'

name         = User.get_users_name
age          = User.get_users_age
gender       = User.get_users_gender
fav_spot     = User.get_users_favorite_place
current_user = User.new(name: name, age: age, gender: gender, fav_spot: fav_spot)

puts current_user.prints_user_message
puts current_user.user_turns_75_message
puts current_user.prints_user_age_message

bryan_the_author = Author.new
puts bryan_the_author.to_s

list = GroceryList.import_list('grocery_list.txt')
grocery_list = GroceryList.new(grocery_list: list, owner: current_user)
puts "#{grocery_list.owner.name}, #{grocery_list}"
grocery_list.gets_answer_about_groceries
grocery_list.delete_item
puts "#{grocery_list.owner.name}, #{grocery_list}"