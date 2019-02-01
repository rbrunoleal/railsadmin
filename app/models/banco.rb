class Banco < ApplicationRecord
  validates :codigo, presence: true
  validates :descricao, presence: true
  
  def name
    self.codigo + ' - ' + self.descricao
  end
end
