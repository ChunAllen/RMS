class AddDescriptionToBrands < ActiveRecord::Migration
  def change
  	add_column :brands, :description, :text
  	add_column :brands, :photo_file_name, :string
	add_column :brands, :photo_content_type, :string
	add_column :brands, :photo_file_size, :integer
	add_column :brands, :photo_updated_at, :datetime
  end
end
