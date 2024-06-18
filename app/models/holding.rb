class Holding < ApplicationRecord
  validates :name, presence: true
  validates :asset_type, :abbreviation, presence: true

  before_create :set_current_price

  def update_current_price
    unless price.present? && updated_at > 1.hour.ago
      if asset_type == 'fiat'
        price = HgFinance.price(abbreviation)
      else
        result = Cryptocompare::Price.full(abbreviation, 'BRL')
        price = result.dig('RAW', abbreviation, 'BRL', 'PRICE')&.to_f
      end
      self.current_price = price || 0
      save!
    end
    current_price
  end

  private

  def set_current_price
    if asset_type == 'fiat'
      price = HgFinance.price(abbreviation)
    else
      result = Cryptocompare::Price.full(abbreviation, 'BRL')
      price = result.dig('RAW', abbreviation.upcase, 'BRL', 'PRICE')&.to_f
    end

    self.current_price = price || 0
  end
end
