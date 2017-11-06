class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :rating, :user, :recipe, presence: :true
end
