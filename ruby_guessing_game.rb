RandNum = (Random.rand * 100) + 1
RandNum = RandNum.floor
puts "I'm thinking of a number between 1 and 100."

until (RandNum == userNumber ||= 0)
	puts "What's your guess?"
	userNumber = gets.chomp.to_i

	if (userNumber > RandNum)
		puts "your guess is too high"
	elsif (userNumber < RandNum)
		puts "your guess is too low"
	end
end

puts "You win!\nYou're awesome!!!"