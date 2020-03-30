# FactoryBot.define do
#   factory :result do
#     score { Faker::Number.within(range: 1..100) }
#     remark { Faker::Lorem.words(number: 4) }
#     association :candidate, factory: :user
#     association :test
#   end
# end