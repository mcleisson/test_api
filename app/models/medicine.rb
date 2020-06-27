class Medicine < ApplicationRecord
      after_initialize :total
  def total
    
    self.value = value * quantity
    
  end
end
