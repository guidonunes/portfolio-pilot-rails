class Operation < ApplicationRecord
  belongs_to :holding
  belongs_to :wallet

  validates :quantity, :price, presence: true
end
