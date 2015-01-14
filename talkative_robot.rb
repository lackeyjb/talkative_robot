def get_users_name
	puts "What's your name?"
	users_name = gets.chomp
	return users_name
end

def get_users_gender
	puts "Gender [M or F]:"
	users_gender = gets.chomp
	return users_gender
end

def get_users_age
	puts "How old are you?"
	users_age = gets.chomp.to_i
	return users_age
end

def users_age_calculation(users_age)
	case user_age
	when 0..74
		puts "You will be 75 years old in #{75 - users_age} year(s)."
	when 75
		puts "You are #{users_age}!"
	else
		puts "You turned 75 years old #{users_age - 75} years ago."
	end
end

def boy_or_girl?(users_gender)
	users_gender == "M" ? "young boy" : "young girl"
end

def is_user_young?(users_age)
	users_age < 12
end

def grandpa_or_grandma?(users_gender)
	users_gender == "M" ? "great-great grandpa" : "great-great grandma"
end

def is_user_old?(users_age)
	users_age > 100
end

users_name = get_users_name

users_gender = get_users_gender

users_age = get_users_age

young_person = boy_or_girl?(users_gender)

old_person = grandpa_or_grandma?(users_gender)

puts "Hi #{users_name}, who is #{users_age} year(s) old!"
puts "Do you mind if I call you #{users_name.chars.first}?"

users_age_calculation(users_age)

puts "You are a #{young_person}." if is_user_young?(users_age)
puts "Are you a #{old_person}?" if is_user_old?(users_age)

users_name.upcase!
puts "Hey #{users_name}, where are you going!?"
puts 'Hey "Dude", what\'s up?'


# Add on to previous lab with:
# Group previously defined if/else and case statements into methods
# Have at least one method that does not need a param
# Have at least one method that requires a param

# Bonus
# Create a boolean method (such as hungry?) -- Google for syntax/style
# Make all your methods into 3 lines or less

# Bonus
# In ~/ruby_scripts, create a file called strings.rb
# Go through the entire Ruby doc on strings and practice each method



		