class Blog < ApplicationRecord
  has_many :incomes
  has_many :expenses
end
