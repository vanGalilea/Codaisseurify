FactoryGirl.define do
  factory :artist do
    name            { Faker::Lorem.charachters(15) }
    description     { Faker::Lorem.paragraph(2) }
  end
end
