require 'rails_helper'

RSpec.describe Test, type: :model do
  # Validations
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:end_date) }
  it { should validate_presence_of(:pass_score) }

  # Associations
  it { should belong_to(:creator) }
  # it { should have_many(:user_tests) }
  # it { should have_many(:candidates).through(:user_tests) }
  # it { should have_many(:questions) }
end
