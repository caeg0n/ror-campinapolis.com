class CreateAdminSuperCategorias < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_super_categorias do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
