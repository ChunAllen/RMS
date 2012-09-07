class Company < ActiveRecord::Base
   attr_accessible  :name, :address, :address2, :city, :zip_code, :landline, :mobile, :fax, :country, :user_id

  validates :name, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  
  # belongs_to :user
end
