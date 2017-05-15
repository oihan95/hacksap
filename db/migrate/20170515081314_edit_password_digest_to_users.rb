class EditPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :pasahitza, :password_digest
  end
end
