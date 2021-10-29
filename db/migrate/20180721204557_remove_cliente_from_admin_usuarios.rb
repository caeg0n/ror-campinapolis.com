class RemoveClienteFromAdminUsuarios < ActiveRecord::Migration[5.0]
  def up
    remove_column :admin_usuarios, :nome
    remove_column :admin_usuarios, :slogan
    remove_column :admin_usuarios, :telefone
    remove_column :admin_usuarios, :endereco
    remove_column :admin_usuarios, :img_url
    remove_column :admin_usuarios, :username
    remove_column :admin_usuarios, :admin_categoria_id
    remove_column :admin_usuarios, :admin_plano_id
  end
end
