require "test_helper"

class NewAccountControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_account_new_url
    assert_response :success
  end
end
