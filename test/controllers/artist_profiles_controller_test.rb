require 'test_helper'

class ArtistProfilesControllerTest < ActionController::TestCase
  setup do
    @artist_profile = artist_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_profile" do
    assert_difference('ArtistProfile.count') do
      post :create, artist_profile: { a_brief: @artist_profile.a_brief, a_dob: @artist_profile.a_dob, a_edu: @artist_profile.a_edu, a_img: @artist_profile.a_img, a_name: @artist_profile.a_name, a_skills: @artist_profile.a_skills, a_top_workshops: @artist_profile.a_top_workshops, a_xtra: @artist_profile.a_xtra }
    end

    assert_redirected_to artist_profile_path(assigns(:artist_profile))
  end

  test "should show artist_profile" do
    get :show, id: @artist_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_profile
    assert_response :success
  end

  test "should update artist_profile" do
    patch :update, id: @artist_profile, artist_profile: { a_brief: @artist_profile.a_brief, a_dob: @artist_profile.a_dob, a_edu: @artist_profile.a_edu, a_img: @artist_profile.a_img, a_name: @artist_profile.a_name, a_skills: @artist_profile.a_skills, a_top_workshops: @artist_profile.a_top_workshops, a_xtra: @artist_profile.a_xtra }
    assert_redirected_to artist_profile_path(assigns(:artist_profile))
  end

  test "should destroy artist_profile" do
    assert_difference('ArtistProfile.count', -1) do
      delete :destroy, id: @artist_profile
    end

    assert_redirected_to artist_profiles_path
  end
end
