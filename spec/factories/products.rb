FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    max_price { Faker::Commerce.price }
    min_price { Faker::Commerce.price }
    percent_change { Faker::Commerce.price }
  end
end