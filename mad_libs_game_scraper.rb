require "mechanize"
require "nokogiri"

ar = "The peasant and the doctor stood on opposite sides of the bed, beside the old, dying woman. She was calm and resigned and her mind quite clear as she looked at them and listened to their conversation. She was going to die, and she did not rebel at it, for her time was come, as she was ninety-two."
#this is our sentence that we want to turn into a madlib
passage = ar.split
passage.sample(passage.count)

puts "What is your name?"
user_name = gets.chomp

passage.sample(passage.count).each do |i|
  counter2 = 0
  while counter2 < 6

    html = agent.get("http://www.thefreedictionary.com/#{i}").body
    html_doc = Nokogiri::HTML(html)

    partofspeechxml = html_doc.xpath("//*[contains(concat( " ", @class, " " ), concat( " ", "hvr", " " ))]")
    partofspeech = partofspeechxml.to_s

	  if partofspeech.include?("noun")
      puts "Give me a noun, #{user_name}"
      passage[i] = gets.chomp
      counter2 = counter2 + 1
    elsif partofspeech.include?("verb")
      puts "Give me a verb, #{user_name}"
      passage[i] = gets.chomp
      counter2 = counter2 + 1
    elsif partofspeech.include?("adjective")
      puts "Give me a verb, #{user_name}"
      passage[i] = gets.chomp
      counter2 = counter2 + 1
  	end
  end
end

puts passage.join(" ") + ". -#{user_name}"