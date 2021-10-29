class AddSiteIdToSiteThumbnails < ActiveRecord::Migration[5.2]
  def change
    add_column :site_thumbnails, :site_id, :integer
  end
end
