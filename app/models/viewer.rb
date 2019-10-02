# - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.

# - `Viewer#add_review(movie)`
#   - `Movie` instance is passed in as its only argument and this method adds the `Movie` instance to the `Viewer` instance's list of reviewed movies;
#   - returns a `Review` instance.

# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

# - `Viewer#reviewed_movie?`
#   - a `Movie` instance is passed in as its only argument;
#   - returns `true` if the `Viewer` instance already has an association with the `Movie` instance.

class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
# - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
  def reviews
  Reviews.all.select do |review|
    review.viewer == self 
    end 
  end  

# - `Viewer#add_review(movie)`
#   - `Movie` instance is passed in as its only argument and 
#   this method adds the `Movie` instance to the `Viewer` instance's list of reviewed movies;
#   - returns a `Review` instance.

  def add_review(movie)
    Review.new(self, movie, rating)
  end 

# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

  def reviewed_movies 
    Movies.all.select do |movie|
      movie.viewer == self 
    end 
  end 

# - `Viewer#reviewed_movie?`
#   - a `Movie` instance is passed in as its only argument;
#   - returns `true` if the `Viewer` instance already has an association with the `Movie` instance.

  def reviewed_movie(movie)
    movie.self == self 
    # return true if viewer instance which is username 
    # has an association wth the movie instance which is title 
  end 


  # `Viewer#rate_movie(movie)`
  # - a `Movie` instance and a rating are passed in as arguments;
  # - assigns the rating to the `Review` instance already associated with this `Viewer` instance and the passed `Movie` instance;
  # - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance;
  # - rating should be a number between 1 and 5, other values should not be allowed.

  def rate_movie(movie, rating)
    Review.new(self)
  end 
  # assignin the ratng

end
