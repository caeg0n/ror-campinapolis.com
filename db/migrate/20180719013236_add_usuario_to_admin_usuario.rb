class AddUsuarioToAdminUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_usuarios, :username, :string
  end
end
