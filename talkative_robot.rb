# User information
def get_users_name
	puts "What's your name?"
	gets.chomp
end

def get_users_gender
	puts "Gender [M or F]:"
	gets.chomp
end

def get_users_age
	puts "How old are you?"
	gets.chomp.to_i
end

def get_users_favorite_place
	puts "Where's your favorite place to go?"
	gets.chomp
end

def prints_user_message(user)		
	puts "Hi #{user[:name]}, who is #{user[:age]} year(s) old!"
	puts "Do you mind if I call you #{user[:name].chars.first}?"
end

def user_turns_75_message(user)
	case user
	when 0..74
		puts "You will be 75 years old in #{75 - user} year(s)."
	when 75
		puts "You are #{user}!"
	else
		puts "You turned 75 years old #{user - 75} years ago."
	end
end

def male?(user)
	user == "M" || user == "Male"
end

def young_person_message(user)
	young_person_greeting = male?(user) ? "boy" : "girl"
	"young #{young_person_greeting}"
end

def great_great_grandparent_message(user)
	older_gender_greeting = male?(user) ? "pa" : "ma"
	"great-great grand#{older_gender_greeting}"
end

def prints_user_age_message(user)
	puts "You're a #{young_person_message(user[:gender])}." if user[:age] < 12
	puts "You're probably someone's #{great_great_grandparent_message(user[:gender])}!!" if user[:age] >= 100
end

def get_search_name
	print "Search name: "
	gets.chomp.capitalize
end

def select_by_name(list_of_users, search_name)
list_of_users.select { |user| user[:name] == search_name }	
end

# Grocery list
def gets_answer_about_groceries(grocery_list)
	puts "Hey! did you get the #{grocery_list}? (Y/N)"
	gets.chomp
end

def random_grocery_item(grocery_list)
	random_item = grocery_list.sample
end

def pickup_item?(input)
	input == "Y" || input == "yes"
end

def grocery_list_styling(list)
	list.map.with_index { |item, index| "#{index + 1} -- #{item}" }
end

#User/Author information commands
user = { name: get_users_name,     age: get_users_age, 
	       gender: get_users_gender, fav_spot: get_users_favorite_place 
}

author  = { name: "Bryan", age: 25, gender: "M", fav_spot: "Yellowstone" }
persons = [user, author]

prints_user_message(user)
user_turns_75_message(user[:age])
prints_user_age_message(user)

search_name = get_search_name
puts select_by_name(persons, search_name)

#Grocery list commands
grocery_list = ["potatoes", "bananas", "chicken", "eggs", "milk", "bacon", "flour"]

first_item_answer = gets_answer_about_groceries(grocery_list.first)
grocery_list.shift if pickup_item?(first_item_answer)

random_item = random_grocery_item(grocery_list)
did_user_get_item = gets_answer_about_groceries(random_item) 
grocery_list.delete(random_item) if pickup_item?(did_user_get_item)

puts "Oh yeah, don't forget the don't forget the bread!"
grocery_list << "bread"

styled_grocery_list = grocery_list_styling(grocery_list)

IO.write("grocery_list.txt", styled_grocery_list.join("\n"))

new_grocery_list = IO.read("grocery_list.txt").split("\n")

new_grocery_list.map! do |item|
	item.scan(/[a-z]/).join("")
end

puts new_grocery_list








		