class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :stars, presence: true, numericality: { only_integer: true }
end
