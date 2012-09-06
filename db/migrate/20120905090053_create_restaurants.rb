class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text   :main_address
      t.text   :main_address2
      t.string :landline
      t.string :mobile
      t.string :fax
      t.integer :company_id
      
      t.timestamps
    end

    add_index :restaurants, :company_id
  end
end
