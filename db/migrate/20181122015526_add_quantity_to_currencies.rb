class AddQuantityToCurrencies < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :quantity, :decimal
  end
end
