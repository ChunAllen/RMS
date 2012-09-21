class Brand < ActiveRecord::Base
  attr_accessible :name, :client_id, :description,:photo_file_name,:photo_content_type,
  :photo_file_size,:photo_updated_at,:photo
  
  belongs_to :client
end
