class AddIdToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :company_id, :integer
   	 add_column :users, :restaurant_id, :string
   	 add_column :users, :branch_id, :integer
     add_column :users, :roles_name, :string
     add_column :users, :user_type, :string
  end
end
