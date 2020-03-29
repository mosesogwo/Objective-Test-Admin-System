FactoryBot.define do
  factory :question do
    q_text { Faker::Lorem.sentences(number: 1) }
    q_options { {'A': 'Option 1', 'B': 'Option 2', 'C': 'Option 3'} }
    q_answer { 'A' }
    association :test
  end
end