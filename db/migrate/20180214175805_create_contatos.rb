class CreateContatos < ActiveRecord::Migration[5.0]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :mail
      t.text :mensagem

      t.timestamps
    end
  end
end
