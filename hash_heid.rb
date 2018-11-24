<<~HEREDOC
This is an application taken from Codecademy which gives a good working
example of adding to and removing from a hash for CRUDing movies titles/ratings
HEREDOC

movies = {
  the_matrix: 4.5
  }

puts "What dae ye want?"
choice = gets.chomp.downcase
case choice

  when "add"
  puts "Gies a movie title"
  title = gets.chomp.to_sym
  	if movies[title] == nil
  		puts "How would you rate it? 0-5"
 	 		rating = gets.chomp.to_i
  		movies [title] = rating
  		puts "#{title} added to the hash!"
  	else
   		puts "movie already exists"
  	end

    when "update"
    puts "Which title would you like to update?"
    title = gets.chomp.to_sym
    if movies[title] == nil
      puts "movie isnae in the hash"
    else
      puts "How would you rate this movie now? 0-5"
       rating = gets.chomp.to_i
      movies [title] = rating
      puts "#{title} rating has been updated!"
    end

  when "display"
  movies.each{|movie,rating| puts "#{movie}: #{rating}"}

  when "delete"
  puts "Which title would you like to DELETE?"
  title = gets.chomp.to_sym
  if movies[title] == nil
    puts "movie isnae in the hash"
  else
  	movies.delete(title)
  	puts "#{title} rating has been DELETED!"
  end
else
  puts "Error!"
end
