# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :recipe do
    name "Chicken"
    course "dinner"
    user
  end

  factory :user do
    name "name"
    email
    password "password"
    password_confirmation "password"
  end
end
