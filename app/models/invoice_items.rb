class InvoiceItems < ActiveRecord::Base
  has_one :invoice
  has_one :product
end
