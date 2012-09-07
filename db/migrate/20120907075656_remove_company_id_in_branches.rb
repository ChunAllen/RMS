class RemoveCompanyIdInBranches < ActiveRecord::Migration
  def change
  	remove_column :branches, :company_id
  end
end
