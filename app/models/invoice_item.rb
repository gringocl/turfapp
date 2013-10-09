class InvoiceItem < ActiveRecord::Base

  belongs_to :invoice
  belongs_to :product
  
  def quantity=(value)
    write_attribute :quantity, value
    calculate_subtotal!
  end  

  def calculate_subtotal!
    value = self.product.price * self.quantity
    update_attribute :subtotal, value
  end
end
