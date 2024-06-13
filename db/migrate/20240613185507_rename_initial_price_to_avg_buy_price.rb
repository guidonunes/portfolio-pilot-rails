class RenameInitialPriceToAvgBuyPrice < ActiveRecord::Migration[7.1]
  def change
    rename_column :operations, :initial_price, :avg_buy_price
  end
end
