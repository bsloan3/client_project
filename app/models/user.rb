class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness:true

  has_many :ratings
  has many :recipes, class_name: "Recipe", foreign_key: "user_id"
  has_secure_password
end
