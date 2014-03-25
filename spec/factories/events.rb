FactoryGirl.define do
  factory :event do
    title { Faker::Lorem.words.join(' ') }
    member { create(:member) }
    tagline     { Faker::Lorem.sentence(word_count = 4) } 
    address     { Faker::Address.street_address }
    address2    { rand(5..278) }
    city        { Faker::Address.city }
    state       { Faker::AddressUS.state }
    zip         { Faker::AddressUS.zip_code }
    more_info   { Faker::BaconIpsum.paragraph }
  end
end
