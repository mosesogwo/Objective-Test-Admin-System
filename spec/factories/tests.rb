FactoryBot.define do
  factory :test, aliases: [:taken_test] do
    title { Faker::Lorem.sentence(word_count: 10) }
    start_date { 02-02-2020 }
    end_date { 02-04-2020}
    pass_score { 50 }
    creator
  end
end