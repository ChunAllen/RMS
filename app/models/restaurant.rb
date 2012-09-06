class Restaurant < ActiveRecord::Base
  validates :name, :presence => true
  validates :landline, :presence => true
 
  attr_accessible :name, :main_address, :main_address2, :landline, :mobile, :fax
end
