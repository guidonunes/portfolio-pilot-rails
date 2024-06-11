class RenameAssetsToHoldings < ActiveRecord::Migration[7.1]
  def change
    rename_table :assets, :holdings
  end
end
