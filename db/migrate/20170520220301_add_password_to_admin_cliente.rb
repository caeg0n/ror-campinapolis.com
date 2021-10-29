class AddPasswordToAdminCliente < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_clientes, :password, :string
  end
end
