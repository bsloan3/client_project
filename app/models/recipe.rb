class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients
  has_many :ratings


  validates :name, :difficulty_level, :prep_time, :directions, :user, :category, presence: :true
end
