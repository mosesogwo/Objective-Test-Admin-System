FactoryBot.define do
  factory :user, aliases: [:creator, :canditate] do
    name { Faker::Name.name }
    email  { Faker::Internet.email }
    password { Faker::String.random(length: 6) }
  end
end