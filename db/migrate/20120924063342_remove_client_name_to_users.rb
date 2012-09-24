class RemoveClientNameToUsers < ActiveRecord::Migration
  
  def change
  	remove_column :users, :client_name
  	add_column :clients, :client_id, :integer

  end

end
