class AddImagemToAdminClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_clientes, :imagem, :string
  end
end
