class Result < ApplicationRecord
  validates :score, :remark, presence: true
  belongs_to :test
  belongs_to :candidate, class_name: 'User'
end
