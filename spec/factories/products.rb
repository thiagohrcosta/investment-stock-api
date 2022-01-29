FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { Faker::Number.decimal(l_digits: 2) }
    max_price { Faker::Number.decimal(l_digits: 2) }
    min_price { Faker::Number.decimal(l_digits: 2) }
    percent_change { Faker::Number.decimal(l_digits: 2) }
  end
end