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

