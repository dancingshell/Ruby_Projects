original_passage = "I’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel."

puts "Welcome to Mad Libs: Inspiration"
puts "What is your name?"
user_name = gets.chomp
puts "thank you, #{user_name}!"
puts "choose a plural noun"
plural_noun1 = gets.chomp
puts "choose a verb"
verb1 = gets.chomp
puts "choose another verb"
verb2 = gets.chomp

user_passage = "I’ve learned that #{plural_noun1} will #{verb1} what you said, #{plural_noun1} will #{verb1} what you did, but #{plural_noun1} will never #{verb1} how you made them #{verb2}. \nBy #{user_name} "
puts user_passage


def mad_libs(word)



