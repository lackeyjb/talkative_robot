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

def male_or_female?(user_gender)
	user_gender == "M" 
end

def is_user_young?(user_age)
	user_age < 12
end

def is_user_old?(user_age)
	user_age > 100
end

users_name = get_users_name

users_gender = get_users_gender

users_age = get_users_age

young_person = male_or_female?(users_gender) && is_user_young?(users_age) ? "young boy" : "young girl"

old_person =  male_or_female?(users_gender) && is_user_old?(users_age) ? "great-great grandpa" : "great-great grandma"

puts "Hi #{users_name}, who is #{users_age} year(s) old!"
puts "Do you mind if I call you #{users_name.chars.first}?"

users_age_case(users_age)

puts "You are a #{young_person}." unless is_user_old?(users_age)
puts "Are you a #{old_person}?" unless is_user_young?(users_age)

puts "Hey #{users_name.upcase}, where are you going!?"
puts 'Hey "Dude", what\'s up?'






		