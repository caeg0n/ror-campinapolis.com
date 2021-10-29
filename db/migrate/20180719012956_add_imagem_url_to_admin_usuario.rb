class AddImagemUrlToAdminUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_usuarios, :img_url, :string
  end
end
