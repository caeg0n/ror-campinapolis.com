class CreateSiteThumbnails < ActiveRecord::Migration[5.2]
  def change
    create_table :site_thumbnails do |t|

      t.timestamps
    end
  end
end
