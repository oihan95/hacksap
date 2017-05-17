class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do|t|
      t.string :material
      t.string :text
      t.string :reference
      t.string :quantity

      t.timestamps
    end
  end
  def change2
    add_index :products, :material, unique: true
  end
end
