class Question < ApplicationRecord
  validates :q_text, :q_options, :q_answer, presence: true
  validates :q_answer, length: { is: 1 }
  serialize :q_options, Hash
  belongs_to :test
end
