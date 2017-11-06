class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :rating, :user, :recipe, presence: :true
  validates :rating, inclusion: {in: [1,2,3,4,5]}
  validates_uniqueness_of :user, scope: :rating
end
