class CreateSpreeNewCollections < ActiveRecord::Migration
  def up
    create_table :spree_new_collections do |t|
      t.string :new_collection_h1
      t.string :new_collection_h2
      t.string :new_collection_url
      t.attachment :new_collection_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_new_collections
  end
end
