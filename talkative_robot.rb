def get_users_name
	puts "What's your name?"
	return gets.chomp
end

def get_users_gender
	puts "Gender [M or F]:"
	return gets.chomp
end

def get_users_age
	puts "How old are you?"
	return gets.chomp.to_i
end

def users_age_case(user_age)
	case user_age
	when 0..74
		puts "You will be 75 years old in #{75 - user_age} year(s)."
	when 75
		puts "You are #{user_age}!"
	else
		puts "You turned 75 years old #{user_age - 75} years ago."
	end
end

def male?(gender)
	gender == "M" || gender == "Male"
end

def young_person_message(gender)
	young_person_greeting = male?(gender) ? "boy" : "girl"
	return "young #{young_person_greeting}"
end

def great_great_grandparent_message(gender)
	older_gender_greeting = male?(gender) ? "pa" : "ma"
	return "great-great grand#{older_gender_greeting}"
end

def gets_answer_about_groceries(grocery_list)
	puts "Hey! did you get the #{grocery_list}? (Y/N)"
	return gets.chomp
end

def pickup_item?(input)
	input == "Y" || input == "yes"
end


users_name = get_users_name

users_gender = get_users_gender

users_age = get_users_age
		
puts "Hi #{users_name}, who is #{users_age} year(s) old!"
puts "Do you mind if I call you #{users_name.chars.first}?"

users_age_case(users_age)

puts "You're a #{young_person_message(users_gender)}." if users_age < 12
puts "You're probably someone's #{great_great_grandparent_message(users_gender)}!!" if users_age >= 100

puts "Hey #{users_name.upcase}, where are you going!?"
puts 'Hey "Dude", what\'s up?'


# Add on to previous lab with:
# Create grocery_list array with 5+ items
# Turn your user questions into a hash
# Hint: Create user variable equal to a blank hash first, then put each key/value into that hash
# Pick out a random off list
# Print “Did you already grab the <random_item>?”
# Remove from list if yes
# Add new item to list “Oh yeah, don’t forget the bread!”

users_info = {}
users_info[:name] = users_name
users_info[:age] = users_age
users_info[:gender] = users_gender

grocery_list = ["potatoes", "bananas", "chicken", "eggs", "milk", "bacon", "flour"]

first_item_answer = gets_answer_about_groceries(grocery_list.first)
grocery_list.shift if pickup_item?(first_item_answer)

random_item = grocery_list.sample
random_item_answer = gets_answer_about_groceries(random_item) 
grocery_list.delete(random_item) if pickup_item?(random_item_answer)

puts "Oh yeah, don't forget the don't forget the bread!"
grocery_list << "bread"

puts grocery_list








		