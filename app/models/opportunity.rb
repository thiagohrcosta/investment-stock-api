class Opportunity < ApplicationRecord
  belongs_to :product

  validates :product, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
