class Test < ApplicationRecord
  validates :title, :start_date, :end_date, :pass_score, presence: true

  belongs_to :creator, class_name: 'User'
end
