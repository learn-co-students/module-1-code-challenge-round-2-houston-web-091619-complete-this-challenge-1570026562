class Viewer
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
    instance.viewer ==self
    end
  end

def movie
  reviews.map do |i|
    i.movie
  end
end

def add_review(movie)
    Review.new(self.movie)
end

def reviewed_movie
    self.movie 
end

end
