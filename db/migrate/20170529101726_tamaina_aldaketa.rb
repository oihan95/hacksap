class TamainaAldaketa < ActiveRecord::Migration[5.0]
  def change
  	change_column :produktuas, :testua, :text, :limit => 200
  	change_column :produktuas, :erreferentzia, :text, :limit => 200
  end
end
