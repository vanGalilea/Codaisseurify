FactoryGirl.define do
  factory :album do
    name      { Faker::Lorem.characters(15) }
    artist    { build(:artist) }
  end
end
