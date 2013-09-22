class RemoveAddress1FromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :address1
    remove_column :clients, :address2
    remove_column :clients, :city
    remove_column :clients, :state
    remove_column :clients, :zipcode
  end
end
