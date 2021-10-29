class DropStatus < ActiveRecord::Migration[5.2]
  def up 
      drop_table :admin_cliente_status 
  end 
end
