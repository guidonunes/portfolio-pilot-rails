module HoldingHelper
  def find_full_holding_info(holding_abrev)

    price = HgFinance.price(holding_abrev)
    return price if price.present? && price > 0

    full_result = Cryptocompare::Price.full(holding_abrev, 'BRL')
    full_result.dig('RAW', holding_abrev, 'BRL', 'PRICE')&.to_f
  end

  def find_percentage_holding_info(holding_abrev)
    full_result = Cryptocompare::Price.full(holding_abrev, 'BRL')
    full_result.dig('RAW', holding_abrev, 'BRL', 'CHANGEPCT24HOUR')
  end

  # def find_percentage_stock_info(holding_abrev)

  # end
end
