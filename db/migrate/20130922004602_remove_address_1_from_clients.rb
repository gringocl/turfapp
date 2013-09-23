class RemoveAddress1FromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :address1
    remove_column :clients, :address2
    remove_column :clients, :city
    remove_column :clients, :state
    remove_column :clients, :zipcode
    remove_column :clients, :phone
    remove_column :clients, :fax

    remove_column :contacts, :phone
    remove_column :contacts, :mobile
    remove_column :contacts, :email
  end
end
