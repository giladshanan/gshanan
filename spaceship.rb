class Spaceship
  attr_accessor :name
  attr_reader :max_speed

  def initialize(name, max_speed)
    @name = name
    @max_speed = max_speed
    @shield = false
    @location = ''
    @inventory = {}

  end

  def disable_shield
    @shield = false
  end

  def enable_shield
    @shield = true
  end

  def warp_to(location)
    p "Traveling at #{max_speed} to #{location}!"
    @location = location
  end

end



# # driver code
# # Q2
# launch_base = [Spaceship.new("Millenium Falcon", 300000), Spaceship.new("Firefly", 670000)]
# p launch_base

# # Q3
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
#   p ship.enable_shield
#   p ship.disable_shield
# end

# Q5
p falcon = Spaceship.new("Millenium Falcon", 300000)
falcon.warp_to("Jabba's Palace")
p falcon
