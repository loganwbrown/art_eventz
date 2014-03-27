FactoryGirl.define do
  factory :profile do
    name          { Faker::Name.name }
    tagline      { Faker::Lorem.sentence }
  end
end
