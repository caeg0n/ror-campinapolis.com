class AddThumbToAdminClientes < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_clientes, :thumb_url, :string
  end
end
