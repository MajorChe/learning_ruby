class Person
  # attr_writer :name
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  # def getName
  #   @name
  # end

  # def setName=(name)
  #   @name = name
  # end
end

adam = Person.new("Adam")
# p adam.getName
# p adam.setName = "che"
p adam.name = "che"