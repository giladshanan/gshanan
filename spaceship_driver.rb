require_relative 'spaceship'

# Q2
# launch_base = [Spaceship.new("Millenium Falcon", 300000), Spaceship.new("Firefly", 670000)]
# p launch_base

# Q3
# launch_base.each do | ship |
#   p ship.name
#   p ship.max_speed
# end

# launch_base[0].name= "Falcon 3000"
# # this returns an error: launch_base[0].max_speed= "45"

# launch_base.each do | ship |
#   p ship.name
#   p ship.max_speed
# end

# Q4
# launch_base.each do | ship |
#   p ship.disable_shield
#   p ship.enable_shield
# end

# Q5
falcon = Spaceship.new("Millenium Falcon", 300000)
falcon.warp_to("Jabba's Palace")
# p falcon

# Q7
# p falcon.tractor_beam('lobster') == false
# p falcon.tractor_beam('cow') == true
# p falcon

# Q8
testing = {
  "cow" => "Chicago",
  "duck" => "LA",
  "ox" => "San Francisco",
  "lobster" => "Maine"}
testing.each do | item, location |
  falcon.pickup(item, location)
  # p falcon
  end

# Q9
falcon.print_inventory

# Q10
p falcon.total_lbs == 983

# Pseudocode:
# Q6
# calculate the weight based on .ord
# IF item weighs less than 500 .ord
  # add item to inventory with value of location
  # shields on
  # return true
# ELSE
  #return false

  # Q7
# the code that follows is my "scale", used to test the weight of various strings and to make sure my method is working predictably:
# total_weight= 0
# "cow".chars.each do | letter |
#   weight = letter.ord
#   total_weight += weight
# end
# total_weight