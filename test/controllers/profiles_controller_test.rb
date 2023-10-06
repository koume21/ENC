require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { club_id: @profile.club_id, comments: @profile.comments, grade: @profile.grade, profile_image: @profile.profile_image, school_id: @profile.school_id, type_id: @profile.type_id, user_id: @profile.user_id, user_name: @profile.user_name } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { club_id: @profile.club_id, comments: @profile.comments, grade: @profile.grade, profile_image: @profile.profile_image, school_id: @profile.school_id, type_id: @profile.type_id, user_id: @profile.user_id, user_name: @profile.user_name } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
