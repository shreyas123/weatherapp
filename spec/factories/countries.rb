FactoryGirl.define do
  factory :country do
    code { Faker::Address.country_code }
  end
end
