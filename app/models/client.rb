class Client < ActiveRecord::Base
  attr_accessible  :name, :status,:photo_file_name, :photo_content_type, :photo_file_size,  :photo_updated_at, :photo, :user_id
  has_attached_file :photo,
  :default_url => '/images/Screen Shot 2012-07-19 at 2.31.38 PM.png'

  has_many :brands
end
