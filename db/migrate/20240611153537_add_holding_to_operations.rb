class AddHoldingToOperations < ActiveRecord::Migration[7.1]
  def change
    add_reference :operations, :holding, null: false, foreign_key: true
  end
end
