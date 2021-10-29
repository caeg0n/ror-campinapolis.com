class AddStatusToAdminClientes < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_clientes, :status, :integer
  end
end
