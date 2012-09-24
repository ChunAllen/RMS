class Client < ActiveRecord::Base
  attr_accessible  :name,:description,  :status,:photo_file_name, :photo_content_type, :photo_file_size,  :photo_updated_at, :photo, :user_id
  has_attached_file :photo,
  :default_url => '/assets/images/company.png'

  has_many :brands , :dependent => :destroy
  belongs_to :user
end
