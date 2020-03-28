class User < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true

  has_many :created_tests, foreign_key: :creator_id, class_name: 'Test'
end
