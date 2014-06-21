require 'bigdecimal'
require 'bigdecimal/util'

class Calculator

  def length_selection(first_number,second_number)
    first_number_length=0
    second_number_length=0
    
	  first_number_length=first_number.to_s.split(".")[1].length if first_number.to_s.split(".").length== 2
    second_number_length=second_number.to_s.split(".")[1].length if second_number.to_s.split(".").length== 2
    
    final_length=first_number_length > second_number_length ? first_number_length : second_number_length
    return final_length
  end
  
  def sum(first_number, second_number)    
    final_length=length_selection(first_number,second_number)
    (first_number + second_number).round(final_length)
      
    
	end
	def sub(first_number, second_number)
    final_length=length_selection(first_number,second_number)
    (first_number - second_number).round(final_length)
	end
	
	def mul(first_number, second_number)
	 first_number_length=0
    second_number_length=0
    
    first_number_length=first_number.to_s.split(".")[1].length if first_number.to_s.split(".").length== 2
    second_number_length=second_number.to_s.split(".")[1].length if second_number.to_s.split(".").length== 2
    
    final_length=first_number_length + second_number_length
    (first_number * second_number).round(final_length)
	end
  
  def div(first_number, second_number)
	  begin
       (first_number.to_f / second_number.to_f).round(6)
    rescue      
      "undefined"
    end
    
  end
   
end