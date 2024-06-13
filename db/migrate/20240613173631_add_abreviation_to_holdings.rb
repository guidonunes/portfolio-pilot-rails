class AddAbreviationToHoldings < ActiveRecord::Migration[7.1]
  def change
    add_column :holdings, :abreviation, :string
  end
end
