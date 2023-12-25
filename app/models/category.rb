class Category < ApplicationRecord
  validates :name, presence: true

  has_many :beers, dependent: :destroy
end
