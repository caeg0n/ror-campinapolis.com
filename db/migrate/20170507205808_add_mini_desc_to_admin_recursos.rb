class AddMiniDescToAdminRecursos < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_recursos, :mini_desc, :string
  end
end
