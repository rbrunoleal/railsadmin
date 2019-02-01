class Contato < ApplicationRecord
  belongs_to :pessoa, :inverse_of => :contatos
  enum tipo: [
    :Email,
	  :Telefone,
	  :Celular]
	validates :campo, presence: true
	
	def title 
    self.tipo + " " + self.campo
  end 
  
end
