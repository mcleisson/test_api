class Medicine < ApplicationRecord
      self.result = self.value * self.quantity  
    #before_validation :result_calc
      
    #def result_calc
     # self.result = value * quantity
    #end
end
