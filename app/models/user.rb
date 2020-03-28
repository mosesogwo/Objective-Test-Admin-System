class User < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true

  has_many :created_tests, foreign_key: :creator_id, class_name: 'Test'
  has_many :user_tests, foreign_key: :candidate_id
  has_many :taken_tests, foreign_key: :candidate_id, through: :user_tests, source: :test
end
