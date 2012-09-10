class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :company_id
      t.integer :role_id
      t.string :company_module
      t.string :restaurant_module
      t.string :branch_module
      t.string :role_module
      t.timestamps
    end

    add_index :permissions, :company_id
    add_index :permissions, :role_id
  end
end
