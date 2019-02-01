class Cidade < ApplicationRecord
  belongs_to :estado, inverse_of: :cidades
  validates :nome, presence: true
  
  def title 
    self.nome
  end 
end
