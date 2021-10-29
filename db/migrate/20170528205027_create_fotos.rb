class CreateFotos < ActiveRecord::Migration[5.0]
  def change
    create_table :fotos do |t|
      t.string :nome
      t.text :desc
      t.string :image

      t.timestamps
    end
  end
end
