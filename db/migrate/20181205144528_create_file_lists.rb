class CreateFileLists < ActiveRecord::Migration[5.2]
  def change
    create_table :file_lists do |t|
      t.references :user
      t.string :description

      t.timestamps
    end
  end
end
