class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.string :author
      t.integer :score

      t.timestamps null: false
    end
  end
end
