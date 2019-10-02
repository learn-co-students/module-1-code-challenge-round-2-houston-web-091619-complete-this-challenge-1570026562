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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def viewers
    reviews.map do |viewer|
      viewer.viewer
    end

  end

  def average_rating
    reviewTotal = 0 
    x = reviews.map do |rating|
      rating.rating
    end
    x.each do |n|
      reviewTotal += n
    end
    reviewTotal.to_f /  viewers.count
  end

  def self.highest_rated
    Review.all.max_by do |review|
      review.average_rating
    end
  end



end
