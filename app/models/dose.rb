class Dose < ApplicationRecord
  belongs_to :cake
  belongs_to :ingredient

  validates :amount, presence: true
  validates :unit, presence: true

  validates_uniqueness_of :cake, scope: [:ingredient] # so there will not be more than one of the same ingredient in each cake
end
