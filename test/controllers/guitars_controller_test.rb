require "test_helper"

class GuitarsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get guitars_new_url
    assert_response :success
  end

  test "should get create" do
    get guitars_create_url
    assert_response :success
  end

  test "should get edit" do
    get guitars_edit_url
    assert_response :success
  end

  test "should get update" do
    get guitars_update_url
    assert_response :success
  end
end
