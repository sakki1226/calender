class Family < ApplicationRecord
  has_many :users
  has_many :expenses, through: :users
  validates :name, presence: true

end