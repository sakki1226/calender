FactoryBot.define do
  factory :income do
    date                {Faker::Date.between(from: '2023-01-01', to: '2024-12-31') }
    income_category_id  {Faker::Number.between(from: 1, to: 16)}
    price               {Faker::Number.between(from: 1, to: 500000)}
    association :user
  end
end

