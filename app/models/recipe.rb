class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  has_many :ratings, dependent: :destroy


  validates :name, :difficulty_level, :prep_time, :directions, :user, :category, presence: :true
  validates :difficulty_level, inclusion: {in: [1,2,3,4,5]}

  def self.search(search)
  where("name LIKE ?", "%#{search}%")
  end
end
