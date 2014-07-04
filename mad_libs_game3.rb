$user_name = "" #sets user name outside so that each round it doesnt have to be reset by user
$game_counter = 0

def fetch_name
  if "" == $user_name || @new_user_response == "y" #checks to see if the user has already input name in previous round of game
      puts "What is your name?"
      $user_name = gets.chomp
  end
end

def madlibs
  quote = "I've learned that noun will verb what you said, noun will verb what you did, but noun will never verb how you made them verb"
  passage = quote.split

  puts "Mad Libs!"
  question = "Would you like to start a new game? Y/N"
  puts question
  answer = gets.chomp
  answer.downcase!
  counter = 1
  

  if answer == "y"
    fetch_name()

    if counter == $game_counter ||= 0
      puts "new_user? Y/N"
      @new_user_response = gets.chomp
      @new_user_response.downcase!
      
      if @new_user_response == "y"
        fetch_name()
      end
    end

    for i in 0...passage.length
      if passage[i].include?("noun")
        puts "Give me a noun, #{$user_name}."
        passage[i] = gets.chomp
        puts ""
      elsif passage[i].include?("verb")
        puts "Give me a verb, #{$user_name}."
        passage[i] = gets.chomp
        puts ""
      end

    end
    $game_counter += 1
    puts ""
    puts passage.join(" ") + ".\n-#{$user_name}"
    puts ""
    madlibs #recursive method (plays game again)

  elsif answer == "n"
    puts "Goodbye!"
  else 
    puts "Please choose Y/N." 
  end    
end  

madlibs

