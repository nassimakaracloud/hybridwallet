class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :symbol
      t.integer :user_id
      t.decimal :unit_price
      t.decimal :total_amount

      t.timestamps
    end
    add_index :currencies, :user_id
  end
end
