class Product < ActiveRecord::Base
	belongs_to :manufacturer
  has_many :invoice_items
  has_many :invoices, through: :invoice_items

	validates :name, :code, :price, presence: true
	validates :code, uniqueness: true
	validates :price, numericality: true


end
