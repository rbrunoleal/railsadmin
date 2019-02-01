class Pessoajuridica < ApplicationRecord
  belongs_to :cnae, optional: true
  validates :razaosocial, presence: true
  validates :cnpj, presence: true
  validates :nomefantasia, presence: true
  
  def name
    self.razaosocial
  end
  
end
