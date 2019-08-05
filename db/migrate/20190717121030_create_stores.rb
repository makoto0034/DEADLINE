class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :count
      t.datetime :deadline

      t.timestamps
    end
  end
end
