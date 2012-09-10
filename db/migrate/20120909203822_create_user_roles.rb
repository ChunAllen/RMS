class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :name
      t.integer :company_id
      t.text :description
      t.timestamps
    end

    add_index :user_roles, :company_id
  end
end
