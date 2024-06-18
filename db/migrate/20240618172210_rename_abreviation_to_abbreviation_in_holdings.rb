class RenameAbreviationToAbbreviationInHoldings < ActiveRecord::Migration[7.1]
  def change
    rename_column :holdings, :abreviation, :abbreviation
  end
end
