class Wallet < ApplicationRecord
  include HoldingHelper

  belongs_to :user
  has_many :operations, dependent: :destroy
  has_many :holdings, through: :operations

  def best_and_worst_performers
    return { best: nil, worst: nil } if operations.empty?

    performances = operations.map do |operation|
      current_price = find_full_holding_info(operation.holding.abreviation)["PRICE"]
      performance = ((current_price - operation.avg_buy_price) / operation.avg_buy_price) * 100
      { operation: operation, performance: performance }
    end

    best_performer = performances.max_by { |p| p[:performance] }
    worst_performer = performances.min_by { |p| p[:performance] }

    { best: best_performer, worst: worst_performer }
  end

  def total_holdings_value
    operations.sum do |operation|
      current_price = find_full_holding_info(operation.holding.abreviation)["PRICE"]
      current_price * operation.quantity
    end
  end
end
