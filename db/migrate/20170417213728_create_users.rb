class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :izena
      t.string :abizena
      t.string :erab_izena

      t.timestamps
    end
  end
end
