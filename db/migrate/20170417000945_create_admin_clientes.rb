class CreateAdminClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_clientes do |t|
      t.references :admin_categoria, foreign_key: true
      t.references :admin_plano, foreign_key: true
      t.string :nome
      t.string :slogan
      t.string :telefone
      t.string :endereco

      t.timestamps
    end
  end
end
