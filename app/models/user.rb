class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness:true

  has_many :ratings, dependent: :destroy
  has_many :recipes, class_name: "Recipe", foreign_key: "user_id", dependent: :destroy
  has_secure_password
end
