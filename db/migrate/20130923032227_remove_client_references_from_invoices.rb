class RemoveClientReferencesFromInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :client_id
  end
end
