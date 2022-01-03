class DogName
  # attr_accessor is used to get and set instance variables of the class
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def speak
    "#{@name} says Arf!"
  end
end

choco = DogName.new("Choco")
puts InitialName = choco.name
puts choco.speak
puts choco.name = "Sheru"
puts "Name changed from #{InitialName} to #{choco.name}"