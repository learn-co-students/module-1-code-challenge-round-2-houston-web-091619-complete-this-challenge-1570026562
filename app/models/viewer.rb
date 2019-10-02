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

  def reviews
    Review.all.select do |i|
      i.viewer == self
    end
  end



  def add_review(movie)
    Review.new(movie, self)
  end

  def reviewed_movies
    reviews.map do |i|
      i.movie
    end
  end
  


  
end



# ## 2. `Viewer` relationships

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
