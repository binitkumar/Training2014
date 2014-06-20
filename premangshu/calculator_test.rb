load 'calculator.rb'
class CalculatorTest
  def initialize
	  @calculator = Calculator.new
	  sum_test
	  sub_test
    mul_test
    div_test
	end
	
	def sum_test
	  fixture = [
      [2,3,5],
	    [3,3,6],
	    [-2,3,1],
	    [0,3,3],
	    [-1,-1, -2],
	    [100000000000000000000000000000000000000000000000000000000000000000, 1, 100000000000000000000000000000000000000000000000000000000000000001],
      [1.2, 1, 2.2],
      [1.12343, -0.12343, 1]      
    ]
		
		fixture.each do |element|
	    puts @calculator.sum(element[0],element[1]) == element[2] ? "Passed" : "failed"		
		end
  end
  
	def sub_test
	  fixture = [
      [2,3,-1],
	    [3,3,0],
	    [-2,3,-5],
	    [0,3,-3],
	    [-1,-1, 0],
	    [100000000000000000000000000000000000000000000000000000000000000001, 1, 100000000000000000000000000000000000000000000000000000000000000000],
      [1.67834356, 1.67834355, 0.00000001]	
    ]
	  fixture.each do |element|
	    puts @calculator.sub(element[0],element[1]) == element[2] ? "Passed" : "failed with #{@calculator.sub(element[0],element[1])} not matching #{ element[2]}"		
		end
	end
  
  def mul_test
	  fixture = [
      [2,3,6],
	    [-2,3,-6],
	    [-3,-4,12],
	    [-2,1.2, -2.4],
      [1.6564712, 2.3456712, 3.88553678747]	
    ]
	  fixture.each do |element|
	    puts (@calculator.mul(element[0],element[1]) - element[2]).abs < 0.00005 ? "Passed" : "failed with #{@calculator.mul(element[0],element[1])} not matching #{ element[2]}"		
		end
	end
  
  def div_test
	  fixture = [
      [6,3,2],
	    [3,3,1],
	    [-2,3,-0.666667],
	    [3,0,"infinity"],
	    [-1,-1, 1],
      [1.2, 1, 1.2]	
    ]
		
		fixture.each do |element|
       if element[2]=="infinity"
         puts @calculator.div(element[0],element[1]) == element[2] ? "Passed" : "failed with #{@calculator.div(element[0],element[1])} not matching #{ element[2]}"		
       else
         puts @calculator.div(element[0],element[1]) == element[2] ? "Passed" : "failed with #{@calculator.div(element[0],element[1]).round(6)} not matching #{ element[2]}"		
       end  
    end
  end
end
CalculatorTest.new