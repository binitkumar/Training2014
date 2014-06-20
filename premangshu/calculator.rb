class Calculator
  def sum(first_number, second_number)
    begin
      @len1=first_number.to_s.split(".")[1].length 
    rescue
      @len1=0
    end
    begin
      @len2=second_number.to_s.split(".")[1].length 
    rescue
      @len2=0      
    end
    if @len1>@len2
      (first_number + second_number).round(@len1)
	  else
      (first_number + second_number).round(@len2)
    end
	end
  
  def sub(first_number, second_number)
    #puts first_number.to_s.split(".").inspect
    
    begin
      @len1=first_number.to_s.split(".")[1].length 
    rescue
      @len1=0
    end
    begin
      @len2=second_number.to_s.split(".")[1].length 
    rescue
      @len2=0      
    end
    if @len1>@len2
      (first_number - second_number).round(@len1)
	  else
      (first_number - second_number).round(@len2)
    end
      
  end
  
  def mul(first_number, second_number)
    begin
      @len1=first_number.to_s.split(".")[1].length 
    rescue
      @len1=0
    end
    begin
      @len2=second_number.to_s.split(".")[1].length 
    rescue
      @len2=0      
    end
    if @len1>@len2
      (first_number * second_number).round(@len1)
	  else
      (first_number * second_number).round(@len2)
    end
	end
  
  def div(first_number, second_number)
	  if second_number != 0
      (first_number.to_f/second_number.to_f).round(6)
    else
        "infinity"      
	  end
  end
end