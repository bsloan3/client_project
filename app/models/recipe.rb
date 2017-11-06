class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  has_many :ratings, dependent: :destroy


  validates :name, :difficulty_level, :prep_time, :directions, :user, :category, presence: :true
end
