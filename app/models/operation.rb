class Operation < ApplicationRecord
  belongs_to :holding
  belongs_to :wallet

  validates :quantity, :avg_buy_price, presence: true
end
