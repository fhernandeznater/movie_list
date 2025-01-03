require './movie'

class Listing
  def initialize
    @collection = []
  end

def run
  loop do
    puts "\n"
    puts "Let's browse your movie collection!"
    puts "1) Add a movie"
    puts "2) See all the movies you have"
    puts "3) Exit"
    puts "Which would you like to do?"
    selection = gets.chomp.to_i
    puts "\n"
    case selection
    when 1
      intake
    when 2
      collection_list
    when 3
      puts "Enjoy watching movies!"
      break
    else
      puts "That's not a valid option."
    end
  end
end

private

def intake
  puts "What's the title of the movie you want to add?"
  title = gets.chomp
  puts "What year did it come out?"
  year = gets.chomp.to_i
  puts "Who directed it?"
  director = gets.chomp
  puts "What format do you have it in?"
  format = gets.chomp
  puts "Is it owned by you (Self) or someone else (the library, on loan from someone else)?"
  owner = gets.chomp
  puts "From 0-5, what's your rating?"
  rating = gets.chomp.to_i
  puts "You've added a movie to your collection!"
  @collection << Movie.new(title, year, director, format, owner, rating)
end

def collection_list
  puts "How would you like to sort this collection?"
  puts "1) Sort by year"
  puts "2) Sort by rating"
  puts "Which would you like to do?"
  sort_select = gets.chomp.to_i
  puts "\n"
    case sort_select
    when 1
      @collection = @collection.sort_by {|film| film.year}
      puts "Sorted by year."
    when 2
      @collection = @collection.sort_by {|film| film.rating}
    else
      puts "That's not a valid option."
    end
  puts "Here's the movies you've got right now:"
  @collection.each do |film|
    puts film
  end
end

end

