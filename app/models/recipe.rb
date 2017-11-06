class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipeable, polymorphic: :true

  validates :name, :difficulty_level, :prep_time, :directions, :quantity, :measurement, :user, :recipeable_id, presence: :true
end
