class AddClientNameUsers < ActiveRecord::Migration
  def change
  	add_column :users, :client_name, :string
  end
end
