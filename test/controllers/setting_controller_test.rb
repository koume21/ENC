require "test_helper"

class SettingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get setting_index_url
    assert_response :success
  end

  test "should get update" do
    get setting_update_url
    assert_response :success
  end

  test "should get destory" do
    get setting_destory_url
    assert_response :success
  end
end
