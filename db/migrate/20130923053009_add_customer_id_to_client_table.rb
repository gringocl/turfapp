class AddCustomerIdToClientTable < ActiveRecord::Migration
  def change
    add_reference :clients, :customer, index: true
  end
end
