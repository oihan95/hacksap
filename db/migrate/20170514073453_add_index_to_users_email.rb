class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
  	add_index :users, :erab_izena, unique: true
  end
end
