class CreateAdminPlanos < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_planos do |t|
      t.string :nome
      t.decimal :valor

      t.timestamps
    end
  end
end
