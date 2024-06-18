class Holding < ApplicationRecord
  validates :name, presence: true
  validates :price, :asset_type, :abreviation, presence: true

  before_create :set_current_price

  def update_current_price
    unless price.present? && updated_at > 1.hour.ago
      if asset_type == 'fiat'
        price = HgFinance.price(abreviation)
      else
        result = Cryptocompare::Price.full(abreviation, 'BRL')
        price = result.dig('RAW', abreviation, 'BRL', 'PRICE')&.to_f
      end
      self.current_price = price || 0
      save!
    end
    current_price
  end

  private

  def set_current_price
    if asset_type == 'fiat'
      price = HgFinance.price(abreviation)
    else
      result = Cryptocompare::Price.full(abreviation, 'BRL')
      price = result.dig('RAW', abreviation.upcase, 'BRL', 'PRICE')&.to_f
    end

    self.current_price = price || 0
  end
end
