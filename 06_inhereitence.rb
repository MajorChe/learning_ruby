class Vehicle
  attr_accessor :color, :model
  attr_reader :year
  def initialize(year,model,color)
    @speed = 0
    @year = year
    @color = color
    @model = model
  end

  def speed
    puts "current speed is #{@speed} kmph"
  end

  def speedUp(number)
    @speed += number
    puts "speed of the car increased to #{@speed} kmph"
  end

  def brake(number)
    @speed -= number
    puts "speed of the car is reduced to #{@speed} kmph"
  end

  def shutdown
    @speed = 0
    puts "park the car"
  end

  def spray_paint(color)
    self.color = color
    puts "You have painted #{color} on your #{@year} #{@model}"
  end

  def self.mileage(kms,liters)
    @mileage = kms/liters
    puts "Mileage is #{@mileage}"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  def to_s
    puts "My car is #{@model}"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  def to_s
    puts "My Truck is #{@model}"
  end
end


car1 = MyCar.new(2021,"Range Rover Sport","White")
truck1 = MyTruck.new(2020,"Ford F150","Black")

puts car1
puts truck1