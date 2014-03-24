FactoryGirl.define do
  factory :profile do
    name { Faker::Name.name }
    tag_line { Faker::Lorem.sentence }
  end
end
