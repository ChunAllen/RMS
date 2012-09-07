class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :contact_number
      t.text :address
      t.integer :company_id
      t.integer :restaurant_id

      t.timestamps
    end

    add_index :branches, :company_id
    add_index :branches, :restaurant_id
  end
end
