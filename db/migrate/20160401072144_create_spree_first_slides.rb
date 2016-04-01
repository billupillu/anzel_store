class CreateSpreeFirstSlides < ActiveRecord::Migration
  def up
    create_table :spree_first_slides do |t|
      t.string :h1
      t.string :h2
      t.string :p
      t.string :url
      t.attachment :img
      t.timestamps
    end
  end

  def down
    drop_table :spree_first_slides
  end
end
