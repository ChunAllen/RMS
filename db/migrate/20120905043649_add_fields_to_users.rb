class AddFieldsToUsers < ActiveRecord::Migration
  def change
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
