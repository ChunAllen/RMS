class AddPhotoToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :photo_file_name, :string
	add_column :clients, :photo_content_type, :string
	add_column :clients, :photo_file_size, :integer
	add_column :clients, :photo_updated_at, :datetime
  end
end
