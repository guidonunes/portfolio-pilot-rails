class Wallet < ApplicationRecord
  belongs_to :user
  has_many :operations, dependent: :destroy
  has_many :holdings, through: :operations
end
