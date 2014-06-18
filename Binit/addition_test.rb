load 'addition.rb'

sum_fixture = [
  [2,3,5],
	[3,3,6],
	[-2,3,1],
	[0,3,3],
	[-1,-1, -2],
	[100000000000000000000000000000000000000000000000000000000000000000, 1, 100000000000000000000000000000000000000000000000000000000000000001],
  [1.2, 1, 2.2]	
]

sum_fixture.each do |fixture_element|
  if sum(fixture_element[0], fixture_element[1]) == fixture_element[2] 
    puts "Passed" 
  else	
	  puts "Failed"
  end
end



