class AddIndexToAdminClientes < ActiveRecord::Migration[5.0]
  def change
    #add_column :admin_clientes, :empresa, :string
    add_index :admin_clientes, :empresa, unique: true
  end
end
