class Medicine < ApplicationRecord
      before_create :total
  def total
    self.value *= self.quantity
  end
  
  #value * quantity  
    #before_validation :result_calc
      
    #def result_calc
     # self.result = value * quantity
    #end 
end
