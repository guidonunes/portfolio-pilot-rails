class RenameAvgBuyPriceToPriceInOperations < ActiveRecord::Migration[7.1]
  def change
    rename_column :operations, :avg_buy_price, :price
  end
end
