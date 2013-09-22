class Invoice < ActiveRecord::Base
  has_one :client
end
