class Wallet < ApplicationRecord
  belongs_to :user
  has_many :stocks, dependent: :destroy
  has_many :assets, through: :stocks
end
