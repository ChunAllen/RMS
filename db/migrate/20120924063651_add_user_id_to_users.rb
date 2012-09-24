class AddUserIdToUsers < ActiveRecord::Migration
  def change
  	remove_column :clients, :client_id
  	add_column :clients, :user_id, :integer

  end
end
