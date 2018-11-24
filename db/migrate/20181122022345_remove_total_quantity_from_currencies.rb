class RemoveTotalQuantityFromCurrencies < ActiveRecord::Migration[5.2]
  def change
    remove_column :currencies, :total_amount, :decimal
  end
end
