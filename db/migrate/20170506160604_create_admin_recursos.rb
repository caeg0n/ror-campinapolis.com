class CreateAdminRecursos < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_recursos do |t|
      t.string :titulo
      t.string :desc
      t.string :img

      t.timestamps
    end
  end
end
