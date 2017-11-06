class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipeable, polymorphic: :true
  has_many :ingredients
  has_many :ratings


  validates :name, :difficulty_level, :prep_time, :directions, :user, :recipeable_id, presence: :true
end
