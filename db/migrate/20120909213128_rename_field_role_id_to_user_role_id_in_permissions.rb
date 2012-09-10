class RenameFieldRoleIdToUserRoleIdInPermissions < ActiveRecord::Migration
  def up
  	rename_column :permissions, :role_id, :user_role_id
  end

  def down
  	rename_column :permissions, :user_role_id, :role_id
  end
end
