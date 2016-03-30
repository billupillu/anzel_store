class CreateSpreeInfos < ActiveRecord::Migration
  def up
    create_table :spree_infos do |t|
      t.string :info_h1
      t.text :info_p
      t.timestamps
    end
  end

  def down
    drop_table :spree_infos
  end
end
