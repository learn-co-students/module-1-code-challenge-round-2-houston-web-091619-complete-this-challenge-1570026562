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

  def reviews
    Review.all.select do |i|
      i.movie == self
    end
  end

  def viewers
    reviews.map do |i|
      i.viewer
    end
  end

  

end


# ### 4. `Movie` relationships

# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#viewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.