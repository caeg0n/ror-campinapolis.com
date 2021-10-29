class AddEmpresaToAdminClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_clientes, :empresa, :string
    add_column :admin_clientes, :proprietario, :string
  end
end
