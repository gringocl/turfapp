class RemovePhoneAndAddPasswordToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :password_digest, :string
    remove_column :users, :phone
  end
end
