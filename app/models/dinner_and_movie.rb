require 'yelp'

class DinnerMovie

  def initialize (location, yelp_hash, movie_params )
    @yelp_response = Yelp.client.search(location, yelp_hash)
    @movie_response = Swayze.new.random_movie
  end

  def display
    y = @yelp_response.businesses.sample.name
    m = @movie_response.sample
    choice = "Tonight's magical evening is brought to you by #{y} and #{m}."
  end
end
