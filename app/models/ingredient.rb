class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, :recipe, presence: :true
end
