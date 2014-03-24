# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'

def set_up_database()
  20.times do |i| 
    events = Event.create(
      {
        title:                      Faker::Lorem.words.join(' '),
        tagline:                    Faker::Lorem.sentence(word_count = 4), 
        address:                    Faker::Address.street_address,
        address2:                   rand(5..278),
        city:                       Faker::Address.city,
        state:                      Faker::AddressUS.state,
        zip:                        Faker::AddressUS.zip_code,
        more_info:                  Faker::BaconIpsum.paragraph,
        photo1:                     Faker::Internet.uri('http'),
        photo2:                     Faker::Internet.uri('http'),
        photo3:                     Faker::Internet.uri('http'),
        website:                    Faker::Internet.uri('http'),
        facebook:                   Faker::Internet.uri('http'),
        application_form:           Faker::Internet.uri('http'),
        contact_name:               Faker::Name.name,
        contact_email:              Faker::Internet.email
      }
      )
  end
end

set_up_database()