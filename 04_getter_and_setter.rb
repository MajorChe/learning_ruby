class MyCar
  attr_accessor :year, :color, :model
  def initialize(year,color,model)
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
end


lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speedUp(20)
lumina.speed
lumina.speedUp(20)
lumina.speed
lumina.brake(20)
lumina.speed
lumina.brake(20)
lumina.speed
lumina.shutdown
lumina.speed