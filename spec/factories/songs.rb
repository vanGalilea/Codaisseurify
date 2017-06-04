FactoryGirl.define do
  factory :song do
    name            { Faker::Lorem.characters(15) }
    url             { Faker::Internet.url }
    year_released   { Faker::Number.number(4) }
    album           { build(:album) }
  end
end
