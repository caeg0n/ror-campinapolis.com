class AddVisivelToAdminClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_clientes, :visibility_status, :bool
  end
end
