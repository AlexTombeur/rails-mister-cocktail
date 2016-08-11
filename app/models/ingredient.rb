class Ingredient < ApplicationRecord

  has_many :doses
  has_one :cocktail, through: :doses

  validates :name, presence: true, uniqueness: true

end
