class AddTotalQuantityToCryptotable < ActiveRecord::Migration[5.2]
  def change
    add_column :cryptotables, :total_quantity, :decimal
  end
end
