class RemoveFieldsToUsers < ActiveRecord::Migration
  def up
  		remove_column :users, :company_name
  		remove_column :users, :first_name
  		remove_column :users, :last_name
  		remove_column :users, :address
  		remove_column :users, :address2
  		remove_column :users, :landline
  		remove_column :users, :mobile
  		remove_column :users, :fax 
  		remove_column :users, :city
  		remove_column :users, :country
  		remove_column :users, :zip_code
  end

  def down
  		add_column :users, :company_name, :string
  		add_column :users, :first_name, :string
  		add_column :users, :last_name, :string
  		add_column :users, :address, :text
  		add_column :users, :address2, :string
  		add_column :users, :landline, :string
  		add_column :users, :mobile, :string
  		add_column :users, :fax, :string
  		add_column :users, :city, :string
  		add_column :users, :country, :string
  		add_column :users, :zip_code, :integer
  end
  

end
