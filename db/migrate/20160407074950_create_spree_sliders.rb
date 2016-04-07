class CreateSpreeSliders < ActiveRecord::Migration
  def up
    create_table :spree_sliders do |t|
      t.string :h1
      t.string :h2
      t.string :p
      t.string :url
      t.attachment :img
      t.timestamps
    end
  end

  def down
    drop_table :spree_sliders
  end
end
