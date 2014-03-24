FactoryGirl.define do
  factory :event do
    title { Faker::Lorem.sentence }
    completed { false }
    member { create(:member) }
  end
end

