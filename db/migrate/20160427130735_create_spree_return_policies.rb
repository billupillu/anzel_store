class CreateSpreeReturnPolicies < ActiveRecord::Migration
  def up
    create_table :spree_return_policies do |t|
      t.text :content
      t.timestamps
    end
  end

  def down
    drop_table :spree_return_policies
  end
end
