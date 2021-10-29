class AddUsernameToAdminCliente < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_clientes, :username, :string
  end
end
