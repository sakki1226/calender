FactoryBot.define do
  factory :expense do
    date                {Faker::Date.between(from: '2023-01-01', to: '2024-12-31') }
    expense_category_id {Faker::Number.between(from: 1, to: 16)}
    payment_method_id   {Faker::Number.between(from: 1, to: 6)}
    price               {Faker::Number.between(from: 1, to: 100000)}
    association :user
  end
end