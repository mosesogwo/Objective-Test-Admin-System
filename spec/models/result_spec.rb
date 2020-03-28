require 'rails_helper'

RSpec.describe Result, type: :model do
  # Validations
  it { should validate_presence_of(:score) }
  it { should validate_presence_of(:remark) }

  # Associations
  it { should belong_to(:test) }
  it { should belong_to(:candidate) }
end
