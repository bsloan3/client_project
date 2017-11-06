class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :item, :amount, :measurement, :recipe, presence: :true
end
