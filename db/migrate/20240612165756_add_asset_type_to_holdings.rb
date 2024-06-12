class AddAssetTypeToHoldings < ActiveRecord::Migration[7.1]
  def change
    add_column :holdings, :asset_type, :string, null: false
  end
end
