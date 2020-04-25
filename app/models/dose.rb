class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :description, uniqueness: { scope: [:ingredient_id, :cocktail_id }
end
