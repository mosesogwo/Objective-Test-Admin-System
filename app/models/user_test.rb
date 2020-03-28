class UserTest < ApplicationRecord
  belongs_to :test
  belongs_to :candidate, class_name: 'User'
end
