class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :number
      t.references :client
      t.integer :subtotal
      t.integer :total
      t.decimal :discount, default: 0

      t.timestamps
    end
  end
end
