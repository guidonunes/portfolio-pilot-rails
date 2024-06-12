class Holding < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :asset_type, presence: true
end
