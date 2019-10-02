# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up 
# new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("Thomas")
v2 = Viewer.new("Ana")
v3 = Viewer.new("Billy")
v4 = Viewer.new("Julie")

m1 = Movie.new("Wind")
m2 = Movie.new("Earth")
m3 = Movie.new("Water")
m4 = Movie.new("Fire")

vm1 = Review.new(v1, m1, 9)
vm2 = Review.new(v2, m2, 2)
vm3 = Review.new(v3, m3, 7)
vm4 = Review.new(v4, m4, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
