class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks do |t|
      t.references :asset, null: false, foreign_key: true
      t.references :wallet, null: false, foreign_key: true
      t.float :quantity
      t.float :initial_price

      t.timestamps
    end
  end
end
