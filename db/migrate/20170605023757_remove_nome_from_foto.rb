class RemoveNomeFromFoto < ActiveRecord::Migration[5.0]
  def change
    remove_column :fotos, :nome, :string
  end
end
