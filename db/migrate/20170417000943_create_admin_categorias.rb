class CreateAdminCategorias < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_categorias do |t|
      t.string :nome

      t.timestamps
    end
  end
end
