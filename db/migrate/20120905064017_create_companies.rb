class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.text :address2
      t.string :city
      t.string :country
      t.string :zip_code
      t.string :landline
      t.string :mobile
      t.string :fax
      t.integer :user_id

      t.timestamps
    end

    add_index :companies, :user_id
  end
end
