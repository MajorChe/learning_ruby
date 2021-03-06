class MyCar
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

  def to_s
    puts "your car is #{@model}"
  end
end


lumina = MyCar.new(1997, 'chevy lumina', 'white')
MyCar.mileage(351, 13)
puts lumina
