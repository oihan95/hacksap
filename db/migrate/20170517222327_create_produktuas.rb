class CreateProduktuas < ActiveRecord::Migration[5.0]
  def change
    create_table :produktuas do |t|
      t.text :materiala
      t.text :testua
      t.text :erreferentzia
      t.text :kantitatea
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :produktuas, [:user_id, :created_at]
  end
end
