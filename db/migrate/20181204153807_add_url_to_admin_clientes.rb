class AddUrlToAdminClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_clientes, :url, :string
  end
end
