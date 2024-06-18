class Wallet < ApplicationRecord
  include HoldingHelper

  belongs_to :user
  has_many :operations, dependent: :destroy
  has_many :holdings, through: :operations

  def best_and_worst_performers
    return { best: nil, worst: nil } if operations.empty?

    performances = operations.map do |operation|
      current_price = find_full_holding_info(operation.holding.abbreviation)
      next if current_price.nil?

      performance = ((current_price - operation.price) / operation.price) * 100
      { operation: operation, performance: performance }
    end

    performances.compact!

    return { best: nil, worst: nil } unless performances.present?

    best_performer = performances.max_by { |p| p[:performance] }
    worst_performer = performances.min_by { |p| p[:performance] }

    { best: best_performer, worst: worst_performer }
  end

  def total_holdings_value
    operations.sum do |operation|
      current_price = find_full_holding_info(operation.holding.abbreviation)
      current_price ? current_price * operation.quantity : 0

    end
  end

  def price_variations
    operations.map do |operation|
      {
        holding: operation.holding,
        price_variation: find_percentage_holding_info(operation.holding.abbreviation) || 0
      }
    end
  end
end
