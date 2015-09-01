class CreateMagazineVolumes < ActiveRecord::Migration
  def change
    create_table :magazine_volumes do |t|
      t.string :number
      t.date :published

      t.timestamps null: false
    end
  end
end
