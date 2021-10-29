class RemoveDescFromFoto < ActiveRecord::Migration[5.0]
  def change
    remove_column :fotos, :desc, :string
  end
end
