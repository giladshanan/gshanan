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

  def tractor_beam(item)
    disable_shield
    if weight(item) < 500
      @inventory[item] = @location
      enable_shield
      return true
    else
      return false
    end
  end

  def pickup(item, location)
    warp_to(location)
    tractor_beam(item)
  end

  def print_inventory
    @inventory.each do | item, location |
      puts "Picked up #{item} from #{location}."
    end
  end

  def weight(item)
    total_weight = 0
    item.chars.each do | letter |
      weight = letter.ord
      total_weight += weight
      end
    return total_weight
  end

  def total_lbs
    total_weight = 0
    @inventory.each do | item, location |
      total_weight += weight(item)
    end
    return total_weight
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
falcon = Spaceship.new("Millenium Falcon", 300000)
falcon.warp_to("Jabba's Palace")
# p falcon

# Q7
# the code that follows is my "scale", used to test the weight of various strings and to make sure my method is working predictably:
# total_weight= 0
# "cow".chars.each do | letter |
#   weight = letter.ord
#   total_weight += weight
# end
# total_weight
# p falcon.tractor_beam('string') == false
# p falcon.tractor_beam('cow') == true
# p falcon


# Q8
testing = {"cow" => "Chicago", "duck" => "LA", "ox" => "San Francisco", "lobster roll" => "Maine"}
testing.each do | item, location |
  falcon.pickup(item, location)
  # p falcon
  end

# Q9
falcon.print_inventory

# Q10
p falcon.total_lbs == 983

# Q6
# calculate the weight based on .ord
# IF item weighs less than 500 .ord
  # add item to inventory with value of location
  # shields on
  # return true
# ELSE
  #return false