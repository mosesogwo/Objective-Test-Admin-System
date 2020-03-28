require 'rails_helper'

RSpec.describe Question, type: :model do
  # Validations
  it { should validate_presence_of(:q_text) }
  it { should validate_presence_of(:q_options) }
  it { should validate_presence_of(:q_answer) }
  it { should validate_length_of(:q_answer).is_equal_to(1) }

  # Associations
  it { should belong_to(:test) }
end
