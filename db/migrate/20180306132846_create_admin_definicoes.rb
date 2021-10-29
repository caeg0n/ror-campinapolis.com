class CreateAdminDefinicoes < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_definicoes do |t|
      t.references :admin_plano, foreign_key: true
      t.string :desc

      t.timestamps
    end
  end
end
