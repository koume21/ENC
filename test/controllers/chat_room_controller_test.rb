require "test_helper"

class ChatRoomControllerTest < ActionDispatch::IntegrationTest
  test "should get chat_page" do
    get chat_room_chat_page_url
    assert_response :success
  end
end
