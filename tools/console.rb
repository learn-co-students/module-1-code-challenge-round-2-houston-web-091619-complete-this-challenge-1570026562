# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("La Llorona")
m2 = Movie.new("8 mil")
m3 = Movie.new("Insidios")
m4 = Movie.new("Man of Honor")


v1 = Viewer.new("Fernando")
v2 = Viewer.new("Raul")
v3 = Viewer.new("Fabiola")
v4 = Viewer.new("Damini")

r1 = Review.new(v1, m1, 2)
r2 = Review.new(v2, m2, 3)
r3 = Review.new(v3, m3, 3)
r4 = Review.new(v4, m4, 4)
r5 = Review.new(v1, m4)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
