movies = {
	avatar: 5,
	incendies: 7
}

puts "Give your input"

choice = gets.chomp().downcase

case choice
	when "add"
		title = gets.chomp()
		rating = gets.chomp()
		movies.each_key {
			|movie|
			if title == movie
				movies[title.to_sym]=rating.to_i
			else
				puts "Movie already exists"
			end
		}
		puts "Movie and rating added"
	when "update"
		title = gets.chomp()
		if movies[title.to_sym]==nil
			puts "no such movie title exist to update"
		else
			rating = gets.chomp()
			movies[title.to_sym]=rating.to_i
		end
	when "display"
		movies.each {
			|movie, rating|
			puts "#{movie}: #{rating}"
		}
	when "delete"
		title = gets.chomp()
		if movies[title.to_sym]==nil
			puts "No such movie exist, error!!!"
		else
			movies.delete(title.to_sym)
			puts "Deleted"
		end 
	else
		puts "Error!"
end

puts movies

