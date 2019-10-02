class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end


  def reviews
    Review.all.select do |review|
      review.viewer == self
    end
  end


  def add_review(movie)
    Review.new(self, movie, rating=nil)
  end


  def reviewed_movies
    reviews.map do |movie|
      movie.movie
    end
  end

  def reviewed_movie?(movie)
    reviews.map do |review|
      if review.movie == movie
        print "true"
      end
    end
  end
  
end
