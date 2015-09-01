class AddComicIdToComicChapters < ActiveRecord::Migration
  def change
    add_column :comic_chapters, :comic_id, :integer
  end
end
