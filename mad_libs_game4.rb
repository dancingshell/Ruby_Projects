quote = "I've learned that noun will verb what you said, noun will verb what you did, but noun will never verb how you made them verb"
passage = quote.split

puts "Welcome to Mad Libs"
puts "What is your name?"
user_name = gets.chomp


while
		if passage[i].include?("noun")
    	puts "Give me a noun, #{user_name}"
    	passage[i] = gets.chomp
  	elsif passage[i].include?("verb")
   		puts "Give me a verb, #{user_name}"
    	passage[i] = gets.chomp
  	end
  end
	



# for i in 0...passage.length
#   if passage[i].include?("noun")
#     puts "Give me a noun, #{user_name}"
#     passage[i] = gets.chomp
#   elsif passage[i].include?("verb")
#     puts "Give me a verb, #{user_name}"
#     passage[i] = gets.chomp
#   end
# end

puts passage.join(" ") + ". -#{user_name}"