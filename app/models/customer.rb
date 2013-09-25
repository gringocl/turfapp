class Customer < ActiveRecord::Base
  has_many :contacts
  has_many :invoices
  validates :name, presence: true, length: {minimum: 3}
  accepts_nested_attributes_for :contacts
  
end
