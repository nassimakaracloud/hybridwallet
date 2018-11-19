class CreateCryptotables < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptotables do |t|
      t.string :symbol
      t.integer :user_id
      t.decimal :unit_price
      t.decimal :total_amount

      t.timestamps
    end
    add_index :cryptotables, :user_id
  end
end
