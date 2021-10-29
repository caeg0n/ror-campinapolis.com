class AddEnumImgToAdminClientes < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_clientes, :enum_img, :integer
  end
end
