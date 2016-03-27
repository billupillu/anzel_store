class CreateSpreeNewsletters < ActiveRecord::Migration
  def up
    create_table :spree_newsletters do |t|
      t.string :newsletter_h1,limit: 40
      t.string :newsletter_h2,limit: 40
      t.string :newsletter_p
      t.string :newsletter_url
      t.attachment :newsletter_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_newsletters
    remove_attachment :spree_newsletters, :newsletter_img
  end
end
