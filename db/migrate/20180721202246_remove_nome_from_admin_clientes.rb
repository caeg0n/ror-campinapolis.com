class RemoveNomeFromAdminClientes < ActiveRecord::Migration[5.0]
  def up
    remove_column :admin_clientes, :nome
    remove_column :admin_clientes, :username
    remove_column :admin_clientes, :password
  end
end
