class CreateSpreeCandies < ActiveRecord::Migration
  def up
    create_table :spree_candies do |t|
      t.string :candy_h1
      t.string :candy_h2
      t.string :candy_url
      t.attachment :candy_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_candies
    remove_attachment :spree_candies, :candy_img
  end
end

