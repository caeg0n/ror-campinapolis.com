class AddAdminClienteRefToAdminUsuario < ActiveRecord::Migration[5.0]
  def change
    add_reference :admin_usuarios, :admin_cliente, foreign_key: true
  end
end
