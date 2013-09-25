class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_many :invoice_items
  has_many :products, through: :invoice_items

  accepts_nested_attributes_for :invoice_items
end
