class Holding < ApplicationRecord
  validates :name, :asset_type, :abbreviation, presence: true

  before_create :set_current_price

  def update_current_price
    self.current_price = fetch_current_price
    save!
    current_price
  end

  def fetch_current_price
    if asset_type == 'fiat'
      HgFinance.price(abbreviation) || 0
    else
      result = Cryptocompare::Price.full(abbreviation, 'BRL')
      result.dig('RAW', abbreviation.upcase, 'BRL', 'PRICE')&.to_f || 0
    end
  end

  def find_percentage_holding_info
    if asset_type == 'fiat'
      HgFinance.variation(abbreviation) || 0
    else
      result = Cryptocompare::Price.full(abbreviation, 'BRL')
      percentage_change = result.dig('RAW', abbreviation.upcase, 'BRL', 'CHANGEPCT24HOUR')&.to_f || 0
      percentage_change
    end
  end

  private

  def set_current_price
    self.current_price = fetch_current_price
  end
end
