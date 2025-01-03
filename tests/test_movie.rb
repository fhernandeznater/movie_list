# tests/test_movie.rb

require 'minitest/autorun'
require './movie'

class TestMovie < Minitest::Test
  def test_movie
    movie = Movie.new("Saw", 1990, "Sam Pickleman", "4K", "Self", 3)
    assert_equal "Saw (1990), directed by Sam Pickleman. 4K owned by Self. ★★★☆☆", movie.to_s, "Initialize method failed"
  end
end

