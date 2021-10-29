class AddDescricaoToAdminClienteStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_cliente_status, :descricao, :string
  end
end
