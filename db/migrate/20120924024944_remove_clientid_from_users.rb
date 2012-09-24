class RemoveClientidFromUsers < ActiveRecord::Migration
  def change
 	remove_column :users, :client_id
  end
end
