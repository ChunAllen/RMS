class Branch < ActiveRecord::Base
  attr_accessible :name, :address, :contact_number, :company_id, :restaurant_id
  belongs_to :restaurant
end
