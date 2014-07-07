
ar = "I've learned that noun1 will verb what you said, noun2 will verb what you did, but noun will never verb how you made them verb."
passage = ar.split

i=0
n=0
v=0
nouns = []
verbs = []
passage.each do |word|
	if word.include?("noun")
		n += 1
	elsif word.include?("verb")
		v += 1
	end
end

puts "Welcome to Mad Libs"
puts "What's your name?"
user_name = gets.chomp

while n > 0
	puts "Give me a plural noun, #{user_name}"
	nouns[i] = gets.chomp
	i += 1
	n -= 1
end

i = 0

while v > 0
	puts "Give me a verb, #{user_name}"
	verbs[i] = gets.chomp
	i += 1
	v -= 1
end 

i = 0

new_passage = passage.map do |response|
	while n > 0
	  if response.include?("noun#{n}")
  		response.gsub
  		i += 1
  		n -+ 1
  	elsif 
  		

user_passage = "I've learned that #{nouns[0]} will #{verbs[0]} what you said, #{nouns[1]} will #{verbs[1]} what you did, but #{nouns[2]} will never #{verbs[2]} how you made them #{verbs[3]}. \nBy #{user_name}"
puts user_passage



