class Wallet < ApplicationRecord
  include HoldingHelper

  belongs_to :user
  has_many :operations, dependent: :destroy
  has_many :holdings, through: :operations

  def total_holdings_value
    operations.sum { |op| op.quantity * op.holding.current_price }
  end

  def all_time_profit
    total_invested = operations.sum { |op| op.quantity * op.price }
    total_value = total_holdings_value
    total_value - total_invested
  end

  def total_invested
    operations.sum { |op| op.quantity * op.price }
  end

  def percentage_change_total_holdings
    return 0 if total_invested.zero?

    ((total_holdings_value - total_invested) / total_invested.to_f) * 100
  end

  def best_and_worst_performers
    return { best: nil, worst: nil } if operations.empty?

    performances = operations.map do |operation|
      current_price = operation.holding.update_current_price
      next if current_price.nil?

      performance = ((current_price - operation.price) / operation.price) * 100
      { operation: operation, performance: performance }
    end.compact

    return { best: nil, worst: nil } unless performances.present?

    best_performer = performances.max_by { |p| p[:performance] }
    worst_performer = performances.min_by { |p| p[:performance] }

    { best: best_performer, worst: worst_performer }
  end

  # def total_holdings_value
  #   operations.sum do |operation|
  #     current_price = operation.holding.fetch_current_price
  #     current_price * operation.quantity
  #   end
  # end
end
