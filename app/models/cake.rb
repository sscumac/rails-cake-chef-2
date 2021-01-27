class Cake < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :dose

  validates :name, presence: true, uniqueness: true
  validates :time, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
