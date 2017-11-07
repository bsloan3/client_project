class Recipe < ApplicationRecord
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  has_many :ratings, dependent: :destroy


  validates :name, :difficulty_level, :prep_time, :directions, :user, :category, presence: :true
  validates :difficulty_level, inclusion: {in: [1,2,3,4,5]}

  accepts_nested_attributes_for :ingredients

  def self.search(search)
  joins(:ingredients).where("name ILIKE ? OR category ILIKE ? OR directions ILIKE ? OR ingredients.item ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
