require 'rails_helper'

RSpec.describe User, type: :model do
  # Validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  # Associations
  it { should have_many(:created_tests) }
  it { should have_many(:user_tests) }
  it { should have_many(:taken_tests).through(:user_tests) }
end
