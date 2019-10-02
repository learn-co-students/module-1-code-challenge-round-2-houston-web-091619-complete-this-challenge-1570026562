# - `Review#initialize(viewer, movie, rating)`
#   - `Viewer` instance, `Movie` instance, and rating are passed in as arguments

#   - the `Review` instance is added to list of all `Review` instances

# - `Review.all`
#   - returns an array of all initialized `Review` instances

# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance

# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance

# - `Review#rating`
#   - returns the rating for the `Review` instance;
#   - if the viewer has not yet rated the movie, this method should return `nil`.



class Review

    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer 
        @movie = movie 
        @rating = rating
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end
