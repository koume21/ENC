require "application_system_test_case"

class RoomMembersTest < ApplicationSystemTestCase
  setup do
    @room_member = room_members(:one)
  end

  test "visiting the index" do
    visit room_members_url
    assert_selector "h1", text: "Room Members"
  end

  test "creating a Room member" do
    visit room_members_url
    click_on "New Room Member"

    fill_in "Room", with: @room_member.room_id
    fill_in "User", with: @room_member.user_id
    click_on "Create Room member"

    assert_text "Room member was successfully created"
    click_on "Back"
  end

  test "updating a Room member" do
    visit room_members_url
    click_on "Edit", match: :first

    fill_in "Room", with: @room_member.room_id
    fill_in "User", with: @room_member.user_id
    click_on "Update Room member"

    assert_text "Room member was successfully updated"
    click_on "Back"
  end

  test "destroying a Room member" do
    visit room_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room member was successfully destroyed"
  end
end
