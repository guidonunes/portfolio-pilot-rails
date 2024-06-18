class HgFinance
  def self.price(abbreviation)
    url = "https://api.hgbrasil.com/finance/stock_price?key=#{ENV['HGFINANCE']}&symbol=#{abbreviation}"
    result = HTTParty.get(url)
    result.dig('results', abbreviation.upcase, 'price').to_f
  end
end
