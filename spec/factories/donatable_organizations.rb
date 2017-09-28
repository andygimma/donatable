FactoryGirl.define do
  factory :donatable_organization, class: 'Donatable::Organization' do
    name "MyString"
    website "MyString"
    twitter "MyString"
    facebook "MyString"
    phone "MyString"
    city "MyString"
    state_or_district "MyString"
    country "MyString"
    banner_url "MyString"
    logo_url "MyString"
    short_description "MyString"
    long_description "MyText"
  end
end
