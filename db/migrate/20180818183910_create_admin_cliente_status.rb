class CreateAdminClienteStatus < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_cliente_status do |t|
      t.integer :status
      t.timestamps
    end
  end
end
