class Customer < ApplicationRecord
  validates :first_name, presence: true
  validates :usual_name, presence: true
  validates :phone_number, presence: true

  has_many :locations, dependent: :destroy
end
