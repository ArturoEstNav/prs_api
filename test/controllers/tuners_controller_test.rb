require "test_helper"

class TunersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tuners_new_url
    assert_response :success
  end

  test "should get create" do
    get tuners_create_url
    assert_response :success
  end

  test "should get edit" do
    get tuners_edit_url
    assert_response :success
  end

  test "should get update" do
    get tuners_update_url
    assert_response :success
  end
end
