class Operation < ApplicationRecord
  belongs_to :holding
  belongs_to :wallet

  validates :quantity, :initial_price, presence: true
end
