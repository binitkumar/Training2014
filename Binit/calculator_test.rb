load 'calculator.rb'
class CalculatorTest
  def initialize
	  @calculator = Calculator.new
	  sum_test
	end
	
	def sum_test
	  fixture = [
      [2,3,5],
	    [3,3,6],
	    [-2,3,1],
	    [0,3,3],
	    [-1,-1, -2],
	    [100000000000000000000000000000000000000000000000000000000000000000, 1, 100000000000000000000000000000000000000000000000000000000000000001],
      [1.2, 1, 2.2]	
    ]
		
		fixture.each do |element|
	    puts @calculator.sum(element[0],element[1]) == element[2] ? "Passed" : "failed"		
		end
	end
end
CalculatorTest.new