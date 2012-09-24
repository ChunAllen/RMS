class Branch < ActiveRecord::Base
  attr_accessible :name, :brand_id , :address1, :address2, :city, :zip, :province_state, :country, :status
  
  belongs_to :brand
  validates :name, :presence => true
end
