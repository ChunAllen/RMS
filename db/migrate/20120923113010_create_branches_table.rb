class CreateBranchesTable < ActiveRecord::Migration
   def change
    create_table :branches do |t|
    	t.string :name
    	t.integer :brand_id
    	t.text :address1
    	t.text :address2
    	t.string :city
    	t.integer :zip
    	t.string :province_state
    	t.string :country
    	t.string :status
    	
      t.timestamps
    end
  end
end
