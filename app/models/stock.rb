class Stock < ApplicationRecord
  belongs_to :asset
  belongs_to :wallet

  validates :quantity, :initial_price, presence: true
end
