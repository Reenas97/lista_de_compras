class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.float :price
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
