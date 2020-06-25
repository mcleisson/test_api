class Customer < ApplicationRecord
    has_many :carts
    before_save :titleize_name
    
    def titleize_name
        self.name = self.name.titleize #mostra primeira letra maiúscula a cada espaço.
        
    end

end
