class AddTotalAmountToCurrencies < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :total_amount, :decimal
  end
end
