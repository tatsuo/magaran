class AddMagazineVolumeIdToComicChapters < ActiveRecord::Migration
  def change
    add_column :comic_chapters, :magazine_volume_id, :integer
  end
end
