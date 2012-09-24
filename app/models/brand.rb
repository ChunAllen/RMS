class Brand < ActiveRecord::Base
  attr_accessible :name, :client_id, :description,:photo_file_name,:photo_content_type,
  :photo_file_size,:photo_updated_at,:photo
  

  has_attached_file :photo,
  :default_url => '/assets/icons/company.png'

  belongs_to :client
  has_many :branches
  
end
