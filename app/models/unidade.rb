class Unidade < ApplicationRecord
  has_many :estados, dependent: :destroy
  validates :nome, presence: true
  
  def name
    self.nome
  end
end
