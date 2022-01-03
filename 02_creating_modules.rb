module Calculation
  def sum(a,b)
    puts a+b
  end
  def sub(a,b)
    puts a-b
  end
end

class ComplexCal
  include Calculation
end


firstCalculation = ComplexCal.new
firstCalculation.sum(5,6)

secondCalculation = ComplexCal.new
secondCalculation.sub(10,13)
