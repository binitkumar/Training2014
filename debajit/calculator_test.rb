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
      [1.12343,-0.12343,1],      
      [1.0001,2.0000000001,3.0001000001]
    ]

		
		fixture.each do |element|
	    puts @calculator.sum(element[0],element[1]) == element[2] ? "Passed" : "failed with #{@calculator.sum(element[0],element[1])} not matched with #{element[2]}"	
		end
	end
	
	def sub_test
    fixture = [
      [6,3,3],
      [-5,5,-10],
      [2.3,1.2,1.1],
      [3.0001000001,1.0001,2.0000000001]
		]
		fixture.each do |element|
		puts @calculator.sub(element[0],element[1]) == element[2] ? "Passed" : "failed with #{@calculator.sub(element[0],element[1])} not matched with #{element[2]}" 	
		end
	end
	
		def mul_test
		fixture = [
		[3,4,12],
		[2,-3,-6],
		[1.2,4,4.8],
    [0.142857,7,1],
    [0.22226,4.49923,1],
    [4.00001,2.001,8.00402001]
		]
		
		fixture.each do |element|
	    puts (@calculator.mul(element[0],element[1]) - element[2]).abs < 0.005 ? "Passed" : "failed with #{@calculator.mul(element[0],element[1])} not matched with #{element[2]}"	
		end
	end
  
  def div_test
    fixture =[
      [6,2,3],
      [0,6,0],
      [4.2,2,2.1],
      [1,7,0.142857],
      [6,0,"undefined"]
    ]
    fixture.each do |element|
      if element[2]!="undefined"
        puts @calculator.div(element[0],element[1]).round(6) == element[2].round(6) ? "Passed" : "failed with #{@calculator.div(element[0],element[1])} not matched with #{element[2]}"
      end
    end
	end
    
end
CalculatorTest.new