class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :company_id
      t.integer :restaurant_id
      t.integer :branch_id
      t.string :role_name

      t.timestamps
    end
  end
end
