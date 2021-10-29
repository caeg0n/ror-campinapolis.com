class AddAdministrationLevelToAdminUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_usuarios, :administration_level, :integer
  end
end
