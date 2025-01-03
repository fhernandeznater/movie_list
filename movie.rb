class Movie
  attr_accessor :title, :year, :director, :format, :owner

  def initialize(title, year, director, format, owner)
    @title = title
    @year = year
    @director = director
    @format = format
    @owner = owner
  end

  def to_s
    "#{title} (#{year}), directed by #{director}. #{format} owned by #{owner}"
  end
end
