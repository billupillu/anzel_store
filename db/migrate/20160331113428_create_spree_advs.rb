class CreateSpreeAdvs < ActiveRecord::Migration
  def up
    create_table :spree_advs do |t|
      t.string :adv_h1
      t.string :adv_h2
      t.string :adv_url
      t.attachment :adv_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_advs
  end
end
