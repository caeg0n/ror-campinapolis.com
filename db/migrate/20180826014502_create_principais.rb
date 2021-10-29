class CreatePrincipais < ActiveRecord::Migration[5.0]
  def change
    create_table :principais do |t|
      t.timestamps
    end
  end
end
