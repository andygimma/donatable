FactoryGirl.define do
  factory :donatable_organization, class: 'Donatable::Organization' do
    name ["es", "en"]
    language { Faker::Company.name }
    website { Faker::Internet.url }
    twitter { Faker::Internet.url }
    facebook { Faker::Internet.url }
    phone { Faker::PhoneNumber.phone_number }
    city { Faker::Address.city }
    state_or_district { Faker::Address.state }
    country { Faker::Address.state }
    short_description { Faker::Lorem.sentence }
    long_description { Faker::Lorem.paragraph }
  end
end
