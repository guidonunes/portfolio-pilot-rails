class RemoveAssetFromOperations < ActiveRecord::Migration[7.1]
  def change
    remove_reference :operations, :asset
  end
end
