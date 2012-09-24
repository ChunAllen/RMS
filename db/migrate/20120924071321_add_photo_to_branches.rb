class AddPhotoToBranches < ActiveRecord::Migration
  def change
  	add_column :branches, :photo_file_name, :string
	add_column :branches, :photo_content_type, :string
	add_column :branches, :photo_file_size, :integer
	add_column :branches, :photo_updated_at, :datetime
  end
end
