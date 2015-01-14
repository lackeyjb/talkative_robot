puts "What is your name?"
name = gets.chomp

puts "Gender [M or F]:"
gender = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "Hi #{name}, who is #{age} year(s) old!"
puts "Do you mind if I call you #{name.chars.first}?"

case age
when 0..74
	puts "You will be 75 years old in #{75 - age} year(s)."
when 75
	puts "You are #{age}!"
else
	puts "You turned 75 years old #{age - 75} years ago."
end

young_person = gender == "M" ? "young boy" : "young girl"
puts "You are a #{young_person}." unless age > 12

old_person = gender == "M" ? "great-great grandpa" : "great-great grandma" 
puts "Are you a #{old_person}?" if age >= 100

name.upcase!
puts "Hey #{name}, where are you going!?"
puts 'Hey "Dude", what\'s up?'




		