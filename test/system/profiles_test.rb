require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Club", with: @profile.club_id
    fill_in "Comments", with: @profile.comments
    fill_in "Grade", with: @profile.grade
    fill_in "Profile image", with: @profile.profile_image
    fill_in "School", with: @profile.school_id
    fill_in "Type", with: @profile.type_id
    fill_in "User", with: @profile.user_id
    fill_in "User name", with: @profile.user_name
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Club", with: @profile.club_id
    fill_in "Comments", with: @profile.comments
    fill_in "Grade", with: @profile.grade
    fill_in "Profile image", with: @profile.profile_image
    fill_in "School", with: @profile.school_id
    fill_in "Type", with: @profile.type_id
    fill_in "User", with: @profile.user_id
    fill_in "User name", with: @profile.user_name
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
