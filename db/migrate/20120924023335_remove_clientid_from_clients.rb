class RemoveClientidFromClients < ActiveRecord::Migration
  
  def change
  	remove_column :clients, :user_id
  	add_column :users, :client_id, :integer
  end

end
