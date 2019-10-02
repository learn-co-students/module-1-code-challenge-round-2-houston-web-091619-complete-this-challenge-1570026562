# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Creed")
m2 = Movie.new("Shaft")
m3 = Movie.new("Space")

v1 = Viewer.new("Bob")
v2 = Viewer.new("Mike")
v3 = Viewer.new("John")

r1 = Review.new(v1, m1, 2)
r2 = Review.new(v2, m2, 5)
r3 = Review.new(v3, m3, 8)


# Review#initialize(viewer, movie, rating)`



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
