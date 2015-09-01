class CreateComicChapters < ActiveRecord::Migration
  def change
    create_table :comic_chapters do |t|
      t.integer :number
      t.string :subtitle
      t.integer :total_point

      t.timestamps null: false
    end
  end
end
