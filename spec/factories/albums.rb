FactoryGirl.define do
  factory :album do
    name      { Faker::Lorem.charachters(15) }
    artist    { build(:artist) }
  end
end
