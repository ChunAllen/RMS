class Permission < ActiveRecord::Base
  
  attr_accessible :user_role_id, :company_module, :restaurant_module, :branch_module, :role_module

  has_many :roles
  belongs_to :company
end
