class Branch < ActiveRecord::Base
  attr_accessible :name, :brand_id , :address1, :address2, :city, :zip, :province_state, :country, :status,
  :photo_file_name, :photo_content_type, :photo_file_size,:photo_updated_at, :photo
  

  has_attached_file :photo,
  :default_url => '/assets/images/company.png'

  belongs_to :brand
  validates :name, :presence => true
end
