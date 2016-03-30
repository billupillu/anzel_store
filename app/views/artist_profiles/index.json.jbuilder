json.array!(@artist_profiles) do |artist_profile|
  json.extract! artist_profile, :id, :a_name, :a_skills, :a_top_workshops, :a_img, :a_brief, :a_xtra, :a_dob, :a_edu
  json.url artist_profile_url(artist_profile, format: :json)
end
