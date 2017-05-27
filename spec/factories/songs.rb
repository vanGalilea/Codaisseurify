FactoryGirl.define do
  factory :song do
    name            { Faker::Lorem.charachters(15) }
    url             { Faker::Internet.url }
    year_released   { Faker::Number.number(2020) }
    album           { build(:album) }
  end
end
