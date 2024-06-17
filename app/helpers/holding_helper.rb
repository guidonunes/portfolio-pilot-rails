module HoldingHelper
  def find_full_holding_info(holding_abrev)
    full_result = Cryptocompare::Price.full(holding_abrev, 'BRL')
    full_result['RAW'][holding_abrev]['BRL']
  end

  def find_percentage_holding_info(holding_abrev)
    full_result = Cryptocompare::Price.full(holding_abrev, 'BRL')
    full_result['RAW'][holding_abrev]['BRL']['CHANGEPCT24HOUR']
  end
end
