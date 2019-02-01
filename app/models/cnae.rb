class Cnae < ApplicationRecord
  
  def title 
    self.codigo + ' - ' + self.descricao 
  end 
end
