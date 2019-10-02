
# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.

# - `Movie#viewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance;
#   - to average ratings, add all ratings together and divide by the total number of ratings.

# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.

class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.

  def reviews
    Reviews.all.select do |review|
      review.movie == self 
    end 
  end 


  # - `Movie#viewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def viewers
    self.movie.map do |movie| 
      Movie.viewer
    end.uniq
  end 

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance;
#   - to average ratings, add all ratings together and divide by the total number of ratings.
  def average_rating
    total = 0
    ratings = self.ratings.each do |rating|
      total += title.rating
      average = total.to_f / rating.count
    end
  end  

# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.
  # def self.highest_rated 
  #   self.max_by do |movie|
  #     movie.rating
  #   end 
  # end 
  def self.highest_rated 
       rating.max_by do |rating|
         rating.movie == self 
      end 
    end
  

end
