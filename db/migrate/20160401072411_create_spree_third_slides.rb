class CreateSpreeThirdSlides < ActiveRecord::Migration
  def up
    create_table :spree_third_slides do |t|
      t.string :h1
      t.string :h2
      t.string :p
      t.string :url
      t.attachment :item1_img
      t.attachment :item2_img
      t.string :price1
      t.string :price2
      t.timestamps
    end
  end

  def down
    drop_table :spree_third_slides
  end
end
