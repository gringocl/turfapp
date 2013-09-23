class Invoice < ActiveRecord::Base
  has_one :client
  has_many :invoice_items
  has_many :products
end
