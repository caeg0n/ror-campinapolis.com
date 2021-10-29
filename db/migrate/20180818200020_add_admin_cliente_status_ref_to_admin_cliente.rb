class AddAdminClienteStatusRefToAdminCliente < ActiveRecord::Migration[5.0]
  def change
    add_reference :admin_clientes, :admin_cliente_status, foreign_key: true
  end
end
