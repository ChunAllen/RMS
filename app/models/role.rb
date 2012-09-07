class Role < ActiveRecord::Base
  attr_accessible :branch_id, :company_id, :restaurant_id, :role_name
end
