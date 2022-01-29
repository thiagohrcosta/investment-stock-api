FactoryBot.define do
  factory :opportunity do
    product
    amount { Faker::Number.number(2) }
  end
end