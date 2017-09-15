FactoryGirl.define do
  salt = "asdasdastr4325234324sdfds"
  factory :user do
    username  Faker::Internet.user_name
    name  Faker::Internet.name
    salt              salt
    crypted_password  Sorcery::CryptoProviders::BCrypt.encrypt("secret", salt)
  end
end
