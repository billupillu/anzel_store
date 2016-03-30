class CreateSpreeArtists < ActiveRecord::Migration
  def up
    create_table :spree_artists do |t|
      
      t.timestamps
    end
  end

  def down
    drop_table :spree_artists
  end
end
