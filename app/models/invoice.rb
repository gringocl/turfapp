class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_many :invoice_items
  has_many :products, through: :invoice_items


  accepts_nested_attributes_for :invoice_items


  def format_created_date
    created_at.strftime("%A %m/%d/%Y")
  end

  def calculate_total!
    invoice_items.each { |i| i.calculate_subtotal! }
    value = invoice_items.map { |i| i.subtotal }.sum
    write_attribute :total, value
  end

end
