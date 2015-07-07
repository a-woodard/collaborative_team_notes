FactoryGirl.define do
  factory :user do |u|
    u.email { Faker::Internet.email }
    u.display_name { Faker::Name.name }
    u.password { Faker::Internet.password(8) }

    factory :invalid_user do |u|
      u.display_name { nil }
      after(:build) { |u| u.valid? }
    end
  end
end