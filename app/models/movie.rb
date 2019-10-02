class Movie
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
        Review.all.select do |instance|
        instance.movie ==self
    end
  end

    def viewers
      reviews.map do |i|
        i.viewers 
      end
    end


  def highest_rated
      self.rating.max_by do |i|
        i.rating.lenght 
      end
  end

end
