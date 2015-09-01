class AddParentidToMagazineVolumes < ActiveRecord::Migration
  def change
    add_column :magazine_volumes, :magazine_id, :integer
  end
end
