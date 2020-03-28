require 'rails_helper'

RSpec.describe UserTest, type: :model do
  it { should belong_to(:test) }
  it { should belong_to(:candidate) }
end
