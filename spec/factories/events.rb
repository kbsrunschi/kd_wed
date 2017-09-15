FactoryGirl.define do
  factory :event do
    name { Faker::Company.name }
    location { Faker::Address.city }
    date { Faker::Date.forward(150) }
    map_url "https://www.google.com/maps/place/Willis+Tower/@41.878876,-87.635915,17z/data=!3m1!4b1!4m2!3m1!1s0x880e2cbee269fbbb:0x10f6dce5eb88c7d"
    contact_email { Faker::Internet.email }
    contact_phone { Faker::PhoneNumber.phone_number }
    description { Faker::Lorem.paragraph }
  end
end
