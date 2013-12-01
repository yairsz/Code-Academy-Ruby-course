movies = {
    IndianaJones: 4,
    StarWars: 4,
}
loop do
    puts "Welcome to the Ruby Movie Database
            --- type 'add' to add a movie
            --- type 'update' to update
            --- type 'display' to list all the movies
            --- type 'delete' to delete a movies
            --- type 'quit' to exit the program"

    choice = gets.chomp
    
    case choice
    when 'add'
        puts "What is the title of the movie?"
        title = gets.chomp.to_sym
        puts "What is the rating of the movie?"
        rating = gets.chomp
        if !movies[title]
            movies[title] = rating.to_i
        else 
            puts "That movie already exists"
        end
    when 'update'
        puts "What movie would you like to update?"
        title = gets.chomp.to_sym
        if movies[title]
            puts "What is the rating of the movie?"
            rating = gets.chomp.to_i
            movies[title] = rating
        else 
            puts "That movie doesnt exist in the database"
        end
    when 'display'
        movies.each do |title,rating|
            puts "#{title}: #{rating}"
        end
    when 'delete'
        puts "What movie would you like to delete?"
        title = gets.chomp.to_sym
        if movies[title]
            movies.delete(title)
            puts "#{title} has been deleted from the database"
        else 
            puts "That movie doesnt exist in the database"
        end
    when 'quit'
        break
    else
        puts "I don't know how to do that, please try again"
    end
end
