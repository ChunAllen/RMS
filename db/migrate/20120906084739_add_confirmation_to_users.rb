class AddConfirmationToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :confimed_at, :datetime
  	add_column :users, :confirmation_token, :string
 	add_column :users, :confirmation_sent_at, :datetime
  end
end