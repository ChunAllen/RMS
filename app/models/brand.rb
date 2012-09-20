class Brand < ActiveRecord::Base
  attr_accessible :name, :client_id
  
  belongs_to :company
  has_many :branches
end
