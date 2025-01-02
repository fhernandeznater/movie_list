require './movie'

class listing
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
