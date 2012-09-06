class Company < ActiveRecord::Base
   attr_accessible  :name, :address, :address2, :city, :zip_code, :landline, :mobile, :fax
  
end
