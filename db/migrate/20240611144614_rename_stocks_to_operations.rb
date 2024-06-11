class RenameStocksToOperations < ActiveRecord::Migration[7.1]
  def change
    rename_table :stocks, :operations
  end
end
