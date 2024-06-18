class RemovePriceFromHoldings < ActiveRecord::Migration[7.1]
  def change
    remove_column :holdings, :price, :float
  end
end
