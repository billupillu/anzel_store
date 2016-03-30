class AddSpreeUserIdToArtistProfile < ActiveRecord::Migration
  def change
    add_column :artist_profiles, :spree_user_id, :integer
  end
end
