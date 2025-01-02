require './movie'

class Listing
  def initialize
    @collection = []
  end

def run
  loop do
    puts "\n"
    puts "Let's browse your movie collection!"
    puts "To add a movie, type 1"
    puts "To see all the movies you have, type 2"
    puts "To exit, type 3"
    pp "Which would you like to do?"
    selection = gets.chomp.to_i
    puts "/n"
    case option
    when 1
      intake
    when 2
      collection_list
    when 3
      pp "Enjoy watching movies!"
      break
    else
      pp "That's not a valid option."
    end
  end
end

def intake
  pp "What's the title of the movie you want to add?"
  title = gets.chomp
  pp "What year did it come out?"
  year = gets.chomp.to_int
  pp "Who directed it?"
  director = gets.chomp
  pp "What format do you have it in?"
  format = gets.chomp
  pp "Is it owned by you (Self) or someone else?"
  owner = gets.chomp
  pp "You've added a movie to your collection!"
end

def collection_list
  pp "Here's the movies you've got right now"
  @collection.each do |film|
    pp film.movie_information_string
  end
end
