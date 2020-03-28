class Test < ApplicationRecord
  validates :title, :start_date, :end_date, :pass_score, presence: true

  belongs_to :creator, class_name: 'User'
  has_many :user_tests, foreign_key: :test_id
  has_many :candidates, through: :user_tests
  has_many :questions
end
