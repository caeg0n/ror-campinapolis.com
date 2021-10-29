class AddSuperCategoriaRefToAdminCategoria < ActiveRecord::Migration[5.0]
  def change
    add_reference :admin_categorias, :admin_super_categoria, foreign_key: true
  end
end
