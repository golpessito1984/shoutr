FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    email
    username { Faker::Name.unique.name }
    password { "password" }
  end
end
