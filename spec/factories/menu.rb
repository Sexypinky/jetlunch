FactoryBot.define do

  factory :menu do
    dish "Fish"
    price "12"
    weekday "Monday"
    first true
    main false
    drink false
    id 1
  end

  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password "qwerty1234"
    password_confirmation "qwerty1234"
  end

  factory :order do
    user
    first 1
    main 1
    drink 1
    weekday
    total_price 36
  end

end