class CreateArtistProfiles < ActiveRecord::Migration
  def change
    create_table :artist_profiles do |t|
      t.string :a_name
      t.string :a_skills
      t.string :a_top_workshops
      t.attachment :a_img
      t.text :a_brief
      t.string :a_xtra
      t.date :a_dob
      t.string :a_edu

      t.timestamps null: false
    end
  end
end
