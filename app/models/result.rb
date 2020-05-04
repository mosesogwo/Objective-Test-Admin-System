class Result < ApplicationRecord
  validates :score, :remark, presence: true
  validates :test, uniqueness: { scope: :user, message: 'One result per user per test' }
  belongs_to :test
  belongs_to :candidate, class_name: 'User'
end
