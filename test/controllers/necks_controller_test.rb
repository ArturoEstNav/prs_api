require "test_helper"

class NecksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get necks_new_url
    assert_response :success
  end

  test "should get create" do
    get necks_create_url
    assert_response :success
  end

  test "should get edit" do
    get necks_edit_url
    assert_response :success
  end

  test "should get update" do
    get necks_update_url
    assert_response :success
  end
end
