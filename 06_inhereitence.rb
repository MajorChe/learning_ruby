module Ev
  def hybrid
    @year < 2019 ? false : true
  end
end

class Vehicle
  attr_accessor :color, :model
  attr_reader :year

  @@number_of_vehicles = 0

  def initialize(year,model,color)
    @speed = 0
    @year = year
    @color = color
    @model = model
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "Number of vehicles created: #{@@number_of_vehicles}"
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
  include Ev
  def to_s
    puts "My car is #{@year} #{@model}"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  def to_s
    puts "My Truck is #{@year} #{@model}"
  end
end


car1 = MyCar.new(2018,"Range Rover Sport","White")
truck1 = MyTruck.new(2020,"Ford F150","Black")

puts car1
puts "My car is hybrid capable: #{car1.hybrid}"
puts truck1
puts Vehicle.number_of_vehicles