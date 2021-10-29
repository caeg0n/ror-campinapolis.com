class AddAdminClienteRefToFoto < ActiveRecord::Migration[5.0]
  def change
    add_reference :fotos, :admin_cliente, foreign_key: true
  end
end
