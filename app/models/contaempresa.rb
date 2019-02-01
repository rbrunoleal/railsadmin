class Contaempresa < ApplicationRecord
  belongs_to :banco
  enum tipo: [
    :Corrente,
	  :Poupança]
	validates :conta, presence: true
	validates :contadigito, presence: true
	validates :agencia, presence: true
	validates :agenciadigito, presence: true
end
