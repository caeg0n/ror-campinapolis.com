class CreateInformativos < ActiveRecord::Migration[5.0]
  def change
    create_table :informativos do |t|
      t.string :mail

      t.timestamps
    end
  end
end
