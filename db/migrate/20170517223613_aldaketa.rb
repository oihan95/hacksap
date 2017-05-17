class Aldaketa < ActiveRecord::Migration[5.0]
  def change
  	add_index :produktuas, :materiala, unique: true
  end
end
