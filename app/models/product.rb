class Product < ApplicationRecord

  validates :name, presence: true

  validates :price, presence: true, numericality: { greater_than: 0 }

  validates :min_price, presence: true
  validates :max_price, presence: true 
  validates :percent_change, presence: true
end
