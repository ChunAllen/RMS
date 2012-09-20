class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
    	t.string :name
    	t.integer :client_id
      	t.timestamps	
    end

    add_index :brands, :client_id
  end
end
