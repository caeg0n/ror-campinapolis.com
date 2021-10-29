class AddCompleteDescToAdminRecursos < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_recursos, :complete_desc, :text
  end
end
