class Favorecido < ApplicationRecord
  belongs_to :pessoa
  accepts_nested_attributes_for :pessoa, reject_if: :all_blank, allow_destroy: true
  has_many :contafavorecidos, :inverse_of => :favorecido
  accepts_nested_attributes_for :contafavorecidos, :allow_destroy => true
end
