class CreateAreaDoUsuarioImagens < ActiveRecord::Migration[5.0]
  def change
    create_table :area_do_usuario_imagens do |t|
      t.string :nome
      t.text :desc
      t.string :url
      t.timestamps
    end
  end
end
