class Result < ApplicationRecord
  validates :score, :remark, presence: true
  validates :test, uniqueness: { scope: :candidate, message: 'One result per user per test' }
  belongs_to :test
  belongs_to :candidate, class_name: 'User'
end
