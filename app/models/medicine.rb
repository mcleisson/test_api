class Medicine < ApplicationRecord
      before_validation :total
  def total


    result += (medicine.value * medicine.quantity)
    "#{result}"
  end
  
  #value * quantity  
    #before_validation :result_calc
      
    #def result_calc
     # self.result = value * quantity
    #end 
end
