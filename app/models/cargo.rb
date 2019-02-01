class Cargo < ApplicationRecord
  validates :descricao, presence: true
  
  def title 
    self.descricao
  end 
end
