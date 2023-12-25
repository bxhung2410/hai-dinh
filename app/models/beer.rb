class Beer < ApplicationRecord
  validates :name, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :default_price, presence: true, numericality: { greater_than_or_equal_to: 0.0 }

  has_many :beers, dependent: :destroy
end
