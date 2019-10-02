require 'pry'
# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


m1 = Movie.new("Title_one")
m2 = Movie.new("Title_two")
m3 = Movie.new("Title_three")




v1 = Viewer.new("Username_one")
v2 = Viewer.new("Username_two")
v3 = Viewer.new("Username_three")




r1 = Review.new(m1, v1, "5")
r2 = Review.new(m2, v1)

r3 = Review.new(m3, v2, "3")
r4 = Review.new(m1, v2, "4")

r5 = Review.new(m1, v3, "3")
r6 = Review.new(m2, v3, "5")








# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
