class Movie
  attr_accessor :title, :year, :director, :format, :owner, :rating

  def initialize(title, year, director, format, owner, rating)
    @title = title
    @year = year
    @director = director
    @format = format
    @owner = owner
    @rating = rating
  end

  def to_s
    "#{title} (#{year}), directed by #{director}. #{format} owned by #{owner}. #{int_to_stars}"
  end

  def int_to_stars
    stars = ""
      rating.times do 
        stars = stars + "★"
      end
      (5-rating).times do
        stars = stars + "☆"
      end
    return stars
  end
end
