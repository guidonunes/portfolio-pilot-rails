class AddCurrentPriceToHolding < ActiveRecord::Migration[7.1]
  def change
    add_column :holdings, :current_price, :float
  end
end
