FactoryBot.define do
  factory :result do
    score { Faker::Number.within(range: 1..100) }
    remark { Faker::Lorem.words(number: 4) }
    candidate
    taken_test
  end
end