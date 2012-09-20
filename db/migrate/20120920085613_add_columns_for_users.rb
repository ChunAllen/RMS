class AddColumnsForUsers < ActiveRecord::Migration
  def change
  	add_column :users, :mobile, :string
  	add_column :users, :username, :string
  	add_column :users, :status, :string
  end
end
