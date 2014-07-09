def get_passage
  @user_name = "Kaitlin"
  puts "Please paste a passage you would like to use to play this game, #{@user_name}."
  @madlib = gets.chomp

  if @madlib[0]== '"' && @madlib[-1]== '"'
    @madlib = @madlib.chomp('"').reverse.chomp('"').reverse
  end
  puts @madlib
end

get_passage