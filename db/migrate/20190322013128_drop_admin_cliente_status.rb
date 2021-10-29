class DropAdminClienteStatus < ActiveRecord::Migration[5.2]
  def up
  	drop_table :admin_cliente_status
  end

  def down
    #raise ActiveRecord::IrreversibleMigration
  end

  def change
    change_table :admin_clientes do |t|
      t.remove_references :admin_cliente_status
    end
  end

end
