FactoryGirl.define do
  factory :artist do
    name            { Faker::RockBand.name }
    description     { Faker::Lorem.paragraph(2) }
  end
end
