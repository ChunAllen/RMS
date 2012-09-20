class RemoveColumnsForUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :company_id
  	remove_column :users, :restaurant_id
  	remove_column :users, :branch_id
  	remove_column :users, :roles_name
  	remove_column :users, :user_type
  end
end
