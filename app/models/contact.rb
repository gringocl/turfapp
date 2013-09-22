class Contact < ActiveRecord::Base
  has_one :client
  def name
    [first_name, last_name].join(' ')
  end
end
