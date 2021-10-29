class CreateRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :registros do |t|
      t.references :admin_plano, foreign_key: true
      t.string :nome
      t.string :empresa
      t.string :endereco
      t.string :mail
      t.string :telefone
      t.timestamps
    end
  end
end
