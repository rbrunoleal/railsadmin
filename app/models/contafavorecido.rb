class Contafavorecido < ApplicationRecord
  belongs_to :banco
  belongs_to :favorecido, :inverse_of => :contafavorecidos
  enum tipo: [
    :Corrente,
	  :Poupança]
	validates :conta, presence: true
	validates :contadigito, presence: true
	validates :agencia, presence: true
	validates :agenciadigito, presence: true
end
