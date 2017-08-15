FactoryGirl.define do
  factory :city do
    name { Faker::Address.city }
    country
    lat { Faker::Address.latitude }
    lon { Faker::Address.longitude }
  end
end
