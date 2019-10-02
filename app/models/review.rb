class Review


    attr_accessor :viewer, :movie, :rating

    @@all = []
  
    def initialize(movie, viewer, rating="nil")
      @viewer = viewer
      @movie = movie
      @rating = rating

      @@all << self
    end
  
    def self.all
      @@all
    end


    #r1.viewer
    # def viewer_default
    #     a = []
    #     @@all.each do |i|
    #     if i == self
    #         a << i
    #     end
    #     end
    #     a
    # end

    #returns review array

        


    # def viewer
    #     viewer_default.select do |i|
    #        p i.viewer
    #     end
    # end

    # def movie
    #     Review.all.select do |i|
    #         i == self
    #     end
    # end

    # def rating
    # end

  

end



# Review#viewer
# returns the Viewer instance associated with the Review instance



# Review#movie
# returns the Movie instance associated with the Review instance


# Review#rating
# returns the rating for the Review instance;
# if the viewer has not yet rated the movie, this method should return nil.
