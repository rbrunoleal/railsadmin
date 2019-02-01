class Estado < ApplicationRecord
  belongs_to :unidade
  has_many :cidades, dependent: :destroy
  validates :nome, presence: true
  validates :sigla, presence: true
  
  def name
    self.nome
  end
end
