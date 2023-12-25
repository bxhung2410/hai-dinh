class Location < ApplicationRecord
  validates :address, presence: true

  belongs_to :customer
end
