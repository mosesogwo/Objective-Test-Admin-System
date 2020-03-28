class Question < ApplicationRecord
  
  serialize :q_options, Hash
  belongs_to :test
end
